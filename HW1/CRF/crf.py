import os 


def bigram(_input,_output):
    fi = open(_input,'r',encoding='utf-8')
    fo = open(_output,'w',encoding='utf-8')
    grams = {}
    for line in fi.readlines():
        line = line.strip().split()
        string = ''
        for word in line:
            string += word
        for i in range(len(string)):
            if i == len(string)-1:
                pass
            else: # [0:-1]
                bigram = string[i]+string[i+1]
                try:
                    grams[bigram] += 1
                except:
                    grams[bigram] = 1
    for key in grams:
        fo.write(key + ' ' + str(grams[key]) + '\n')
    fi.close()
    fo.close()
    return grams

def gram_frequency(char,words):
    string = ''
    for word in words:
        string += word
    idx = string.index(char)
    if idx == len(string)-1:
        freq = '/' # end of line
    else:
        bigram = string[idx]+string[idx+1]
        freq = grams[bigram]
    return freq


def train_label(_input, _output, use_gram=False):
    fi = open(_input,'r',encoding='utf-8')
    fo = open(_output,'w',encoding='utf-8')
    for line in fi.readlines():
        words = line.strip().split()
        for word in words:
            if len(word) == 1:
                fo.write(word + '\t')
                if use_gram:
                    freq = gram_frequency(word,words)
                    fo.write(str(freq) + '\t')
                fo.write('S\n')
                
            elif len(word) == 2:

                fo.write(word[0] + '\t')
                if use_gram:
                    freq = gram_frequency(word[0],words)
                    fo.write(str(freq) + '\t')
                fo.write('B\n')
                
                fo.write(word[1] + '\t')
                if use_gram:
                    freq = gram_frequency(word[1],words)
                    fo.write(str(freq) + '\t')
                fo.write('E\n')
            else:
                fo.write(word[0] + '\t')
                if use_gram:
                    freq = gram_frequency(word[0],words)
                    fo.write(str(freq) + '\t')
                fo.write('B\n')

                for char in word[1:-1]:
                    fo.write(char + '\t')
                    if use_gram:
                        freq = gram_frequency(char,words)
                        fo.write(str(freq) + '\t')
                    fo.write('M\n')

                fo.write(word[-1] + '\t')
                if use_gram:
                    freq = gram_frequency(word[-1],words)
                    fo.write(str(freq) + '\t')
                fo.write('E\n')

        fo.write('\n')
    fi.close()
    fo.close()

def test_label(_input, _output):
    fi = open(_input,'r',encoding='utf-8')
    fo = open(_output,'w',encoding='utf-8')
    for line in fi.readlines():
        words = line.strip().split()
        for word in words:
            for char in word:
                fo.write(char + '\tS\n')
        fo.write('\n')
    fi.close()
    fo.close()

def recover_test(_input, _output):
    fi = open(_input,'r',encoding='utf-8')
    fo = open(_output,'w',encoding='utf-8')
    for line in fi.readlines():
        if line == '\n':
            fo.write('\n')
        else:
            char = line.split()[0]
            pred = line.split()[-1]
            if pred == 'B':
                fo.write(' ' + char)
            elif pred == 'M':
                fo.write(char)
            elif pred == 'E':
                fo.write(char + ' ')
            else:
                fo.write(' ' + char + ' ')
    fi.close()
    fo.close()
    
target = 'pku_test'
grams = bigram('pku_training.utf8','pku_training.bigrams')
train_label('pku_training.utf8','pku_training.label',use_gram = False)
os.system('crf_learn -c 1.0 -f 3 -p 64 template pku_training.label crf_model')
test_label(target+'.utf8',target+'.label')
os.system('crf_test -m crf_model '+target+'.label > '+target+'.result')
recover_test(target+'.result',target+'.crf_result')
os.system('perl ../DICT/scripts/score ../DICT/gold/pku_training_words.utf8 ../DICT/gold/'+target+'_gold.utf8 '+target+'.crf_result > '+target+'_crf_score')
# import keras
import numpy as np 

def char2freq(_input):
    fi = open(_input,'r',encoding='utf-8')
    freq = {}
    for line in fi.readlines():
        line = line.strip().split()
        string = ''
        for word in line:
            string += word
        for char in string:
            try:
                freq[char] += 1
            except:
                freq[char] = 1
    fi.close()
    return freq

def train_dataset(_input, _output):
    freq = char2freq(_input)
    fi = open(_input,'r',encoding='utf-8')
    # fo = open(_output,'w',encoding='utf-8')
    x = []
    y = []
    max_features = 0
    for line in fi.readlines():
        line_x = []
        line_y = []
        words = line.strip().split()
        for word in words:
            if len(word) == 1:
                # fo.write(word + '\t')
                # fo.write(str(freq[word]) + '\t')
                # fo.write('S\t')
                # fo.write(str(label_dict['S'])+'\n')
                line_x.append(freq[word])
                line_y.append(label_dict['B'])
            elif len(word) == 2:
                # fo.write(word[0] + '\t')
                # fo.write(str(freq[word[0]]) + '\t')
                # fo.write('B\t')
                # fo.write(str(label_dict['B'])+'\n')
                line_x.append(freq[word[0]])
                line_y.append(label_dict['B'])
                # fo.write(word[1] + '\t')
                # fo.write(str(freq[word[1]]) + '\t')
                # fo.write('E\t')
                # fo.write(str(label_dict['E'])+'\n')
                line_x.append(freq[word[1]])
                line_y.append(label_dict['I'])
            else:
                # fo.write(word[0] + '\t')
                # fo.write(str(freq[word[0]]) + '\t')
                # fo.write('B\t')
                # fo.write(str(label_dict['B'])+'\n')
                line_x.append(freq[word[0]])
                line_y.append(label_dict['B'])
                for char in word[1:-1]:
                    # fo.write(char + '\t')
                    # fo.write(str(freq[char]) + '\t')
                    # fo.write('M\t')
                    # fo.write(str(label_dict['M']) + '\n')
                    line_x.append(freq[char])
                    line_y.append(label_dict['I'])
                # fo.write(word[-1] + '\t')
                # fo.write(str(freq[word[-1]]) + '\t')
                # fo.write('E\t')
                # fo.write(str(label_dict['E']) + '\n')
                line_x.append(freq[word[-1]])
                line_y.append(label_dict['I'])
        # fo.write('\n')
        if len(line_x) > max_features:
            max_features = len(line_x)
        line_x = np.array(line_x)
        line_y = np.array(line_y)
        x.append(line_x)
        y.append(line_y)
    
    fi.close()
    # fo.close()

    for i in range(len(x)):
        x[i] = np.pad(x[i],(0,max_features-len(x[i])),'constant',constant_values=(0,0))
        y[i] = np.pad(y[i],(0,max_features-len(y[i])),'constant',constant_values=(0,0))
        len_ = nb_features - len(x[i]) % nb_features
        x[i] = np.pad(x[i],(0,len_),'constant',constant_values=(0,0))
        y[i] = np.pad(y[i],(0,len_),'constant',constant_values=(0,0))
    x = np.array(x)
    y = np.array(y)
    return x,y

def test_dataset(_input, timesteps):
    freq = char2freq(_input)
    fi = open(_input,'r',encoding='utf-8')
    x = []
    for line in fi.readlines():
        line_x = []
        words = line.strip().split()
        string = ''
        for word in words:
            string += word
        for char in string:
            line_x.append(freq[char])
        line_x = np.array(line_x)
        x.append(line_x) 
    fi.close()
    for i in range(len(x)):
        x[i] = np.pad(x[i],(0,timesteps-len(x[i])),'constant',constant_values=(0,0))
    x = np.array(x)
    return x


def value2label(_input,_output,preds):
    fi = open(_input,'r',encoding='utf-8')
    fo = open(_output,'w',encoding='utf-8')
    lines = fi.readlines()
    for i in range(len(lines)):
        line = lines[i].strip().split()
        string = ''
        for word in line:
            string += word
        for j in range(len(string)):
            label = reverse_dict[preds[i][j][0]]
            fo.write(string[j]+'\t'+str(preds[i][j][0])+'\t'+label+'\n')
        fo.write('\n')

    fi.close()
    fo.close()


nb_features = 1
# label_dict = {'S':0,'B':1,'M':2,'E':3}
# reverse_dict = {0:'S',1:'B',2:'M',3:'E'}
label_dict = {'B':-1,'I':1}
reverse_dict = {-1:'B',1:'I'}
target = 'pku_test'
x,y = train_dataset('pku_training.utf8','pku_training.label')
print(x.shape,y.shape)
x = np.reshape(x,(x.shape[0],int(x.shape[1]/nb_features),nb_features))
y = np.reshape(y,(y.shape[0],int(y.shape[1]/nb_features),nb_features))
print(x.shape,y.shape)



from keras import Sequential
from keras.layers import LSTM,Dense,TimeDistributed

# expected input data shape: (N, timesteps, nb_features)
model = Sequential()
model.add(LSTM(16, input_shape=(x.shape[1], x.shape[2]),return_sequences=True))
model.add(TimeDistributed(Dense(nb_features)))

model.compile(loss='mse',optimizer='rmsprop',metrics=['accuracy'])
model.summary()
model.fit(x, y,batch_size=100,epochs=1)
model.save('lstm.model')

from keras.models import load_model
model = load_model('lstm.model')

test_x = test_dataset('pku_test.utf8',x.shape[1])
test_x = np.reshape(test_x,(test_x.shape[0],int(test_x.shape[1]/nb_features),nb_features))
print(test_x.shape)
predicts = model.predict(test_x) # (N, timesteps, nb_features)
# predicts = np.round(predicts) # 四舍五入
predicts = np.where(predicts > 0,1,-1)
value2label('pku_test.utf8','pku_test.result',predicts)

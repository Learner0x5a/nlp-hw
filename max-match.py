# coding=utf-8
'''
最长词匹配
'''

def build_dict(_file):
    DICT = {}

    f = open(_file,'r',encoding='utf-8')
    lines = f.readlines()
    f.close()
    f = open(_file+'.dict','w',encoding='utf-8')

    for line in lines:
        for char in line.split():
            try:
                DICT[char]
            except:
                DICT[char] = char
                f.write(char+'\n')

    f.close()
    return DICT

def forward_max_match(line):
    result = []
    string = line.strip()
    max_len = len(string)
    while True:
        try:
            key = string[0:max_len]
            dic[key]
            result.append(key)
            # print(key)
            string = string[max_len:]
            max_len = len(string)
            if not string:
                break
        except:
            if max_len == 1:
                # print('/**************************OOV****************************/')
                # print(key)
                # print('/**************************OOV****************************/')
                result.append(key)
                
                string = string[1:]
                max_len = len(string)
                if not string:
                    break

            else:
                max_len -= 1
    return result


def backward_max_match(line):
    result = []
    string = line.strip()
    max_len = len(string)
    origin_len = len(string)
    while True:
        try:
            key = string[origin_len-max_len:]
            dic[key]
            result.append(key)
            # print(key)
            string = string[0:origin_len-max_len]
            max_len = len(string)
            origin_len = len(string)
            if not string:
                break
        except:
            if max_len == 1:
                # print('/**************************OOV****************************/')
                # print(key)
                # print('/**************************OOV****************************/')
                result.append(key)
                
                string = string[:-1]
                max_len = len(string)
                origin_len = len(string)
                if not string:
                    break

            else:
                max_len -= 1
    result.reverse()
    return result


dic = build_dict('pku_training.utf8')


f = open('pku_test.utf8','r',encoding='utf-8')
lines = f.readlines()
f.close()

# f = open('pku_test.forward_result','w',encoding='utf-8')
# for line in lines:
#     line = line.strip()
#     if not line:
#         continue
#     result = forward_max_match(line)
#     for word in result:
#         f.write(word)
#         f.write('  ')
#     f.write('\n')
# f.close()

# f = open('pku_test.backward_result','w',encoding='utf-8')
# for line in lines:
#     line = line.strip()
#     if not line:
#         continue
#     result = backward_max_match(line)
#     for word in result:
#         f.write(word)
#         f.write('  ')
#     f.write('\n')
# f.close()

def count_single(result):
    count = 0
    for word in result:
        if len(word) == 1:
            count += 1
    return count

f = open('pku_test.bindirectional_result','w',encoding='utf-8')
for line in lines:
    line = line.strip()
    if not line:
        continue
    result_b = backward_max_match(line)
    result_f = forward_max_match(line)
    if len(result_b) > len(result_f): # 选分词较少的
        result = result_f
    elif len(result_b) < len(result_f):
        result = result_b
    else:
        if count_single(result_b) > count_single(result_f): # 分词个数相同，选单字较少的
            result = result_f
        else:
            result = result_b
    for word in result:
        f.write(word)
        f.write('  ')
    f.write('\n')
f.close()

'''
IV Recall Rate指的是词典中的词汇被正确召回的概率
'''
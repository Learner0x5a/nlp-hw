import os
import numpy as np
'''
删去注释
删去开头这些
    source_filename = "src/13.src"
    target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
    target triple = "x86_64-unknown-linux-gnu"
删去!开头的token和函数的attributes
    包括函数声明中的、指令中的和单独成行的
符号化
    整数
    浮点数
        123.321
        1.23321e+2
    十六进制数
分隔
        ( ) [ ] { } < > * :
'''

def is_number(str):
    try:
        float(str) # 可以处理int, float
        return True
    except ValueError:
        return False

# DIC = {}
corpus = [] 
for root,parent,files in os.walk('IRs'):
    for ir in files:
        f = open(os.path.join(root,ir),'r')
        lines = f.readlines()
        f.close()
        new_ir = ''
        for line in lines:
            if line.startswith('target triple =') or line.startswith('target datalayout =') or line.startswith('source_filename =') \
                or line.startswith('attributes #') or line.startswith('!'):
                continue
            # print(line.strip())
            newline = ''
            for char in line: # 删除注释
                if char == ';':
                    break
                newline += char
            newline = newline.replace('%', 'var_')
            newline = newline.replace('.', '_')
            newline = newline.replace(',', ' comma ')
            newline = newline.replace(':', ' colon ')
            newline = newline.replace('*', ' asterisk ')
            newline = newline.replace('(', ' lbracket ')
            newline = newline.replace(')', ' rbracket ')
            newline = newline.replace('[', ' lsbracket ')
            newline = newline.replace(']', ' rsbracket ')
            newline = newline.replace('{', ' lbrace ')
            newline = newline.replace('}', ' rbrace ')
            newline = newline.replace('<', ' labracket ')
            newline = newline.replace('>', ' rabracket ')
            split_newline = newline.split()
            token_line = ''
            for token in split_newline:
                if token.startswith('#') or token.startswith('!'):
                    continue
                if is_number(token):
                    token = 'num'
                if '0x' in token:
                    token = 'num'
                token_line += token + ' '
                # try:
                #     DIC[token] += 1
                # except:
                #     DIC[token] = 1
            
            if(token_line):
                new_ir += token_line +'\n'

        corpus.append(new_ir)
        f = open('tokens/'+ir,'w')
        f.write(new_ir)
        f.close()
print('Tokenization completed.\n')
np.save('corpus.npy',np.array(corpus))



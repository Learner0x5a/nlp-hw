import pickle,re
'''
预处理
'''
f = open('DATA/PART_I.txt','r',encoding='utf-8')
lines = f.readlines()
f.close()

summary = []
text = []
count = 0
for i in range(len(lines)): # 从文件中提取text和summary
    if count % 100000 == 0:
        print('extracting summary and text...',count)
    line = lines[i].strip()
    if line == "<summary>":
        summary.append(lines[i+1])
    if line == "<short_text>":
        text.append(lines[i+1])
    count +=1


def _remove_special_char(m):
    s = m.group(0)
    if s in u'，。！？；“”：《》':
        return s
    return ''

for i,line in enumerate(summary):
    if i % 100000 == 0:
        print('cleaning summary...',i)
    line = re.sub(u'[\(\[（#「【\)\]）#」】]', '', line)
    summary[i] = re.sub(u'[^\u4e00-\u9fa50-9a-zA-Z]', _remove_special_char, line).encode('utf-8')

for i,line in enumerate(text):
    if i % 100000 == 0:
        print('cleaning text...',i)
    line = re.sub(u'[\(\[（#「【\)\]）#」】]', '', line)
    text[i] = re.sub(u'[^\u4e00-\u9fa50-9a-zA-Z]', _remove_special_char, line).encode('utf-8')

# print(len(summary),type(summary),len(text),type(text))

f = open('summary.pkl','wb')
pickle.dump(summary,f)
f.close()

f = open('text.pkl','wb')
pickle.dump(text,f)
f.close()

f = open('summary.pkl','rb')
summary = pickle.load(f)
f.close()

f = open('text.pkl','rb')
text = pickle.load(f)
f.close()

# 分词：char、jieba、thulac
import thulac,jieba
seg = thulac.thulac(seg_only=True) 
def charcut(text):
    split = []
    for char in text:
        split.append(char)
    return split
  
char_text = []
char_summary = []
thulac_text = []
thulac_summary = []
jieba_text = []
jieba_summary = []

for i,short_text in enumerate(text):
    short_text = str(short_text, encoding = 'utf-8')
    if i % 10000 == 0:
        print('cutting summary...',i)
    char_text.append(charcut(short_text))
    thulac_text.append(seg.cut(short_text))
    jieba_text.append(jieba.lcut(short_text))


for i,sum_ in enumerate(summary):
    sum_ = str(sum_, encoding = 'utf-8')
    if i % 10000 == 0:
        print('cutting text...',i)
    char_summary.append(charcut(sum_))
    thulac_summary.append(seg.cut(sum_))
    jieba_summary.append(jieba.lcut(sum_))

# print(len(char_summary[0]), char_summary[0])
# print(len(thulac_summary[0]), thulac_summary[0])
# print(len(jieba_summary[0]), jieba_summary[0])

f = open('char_summary.pkl','wb')
pickle.dump(char_summary,f)
f.close()
f = open('thulac_summary.pkl','wb')
pickle.dump(thulac_summary,f)
f.close()
f = open('jieba_summary.pkl','wb')
pickle.dump(jieba_summary,f)
f.close()

f = open('char_text.pkl','wb')
pickle.dump(char_text,f)
f.close()
f = open('thulac_text.pkl','wb')
pickle.dump(thulac_text,f)
f.close()
f = open('jieba_text.pkl','wb')
pickle.dump(jieba_text,f)
f.close()
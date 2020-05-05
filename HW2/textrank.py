import codecs,pickle
import numpy as np


################################### jieba 分词 ###################################
print('loading jieba texts...')
f = open('demo_jieba_text.pkl','rb')
TEXT = pickle.load(f)
f.close()
print('loading jieba ground-truths...')
f = open('demo_jieba_summary.pkl','rb')
SUMMARY = pickle.load(f)
f.close()
################################### jieba 分词 ###################################

################################### 划分训练集、测试集 ###################################
test_ground_truth = []
for summary in SUMMARY[10000:11000]:
    test_ground_truth.append(' '.join(summary).strip())


corpus = []
for text in TEXT:
    corpus.append(' '.join(text).strip())
train_corpus = corpus[0:10000]
test_corpus = corpus[10000:11000]
################################### 划分训练集、测试集 ###################################

print('Testing...')
from textrank4zh import TextRank4Sentence
from rouge import Rouge 
rouge = Rouge()
tr4s = TextRank4Sentence()
result_f = open('textrank_results','w',encoding='utf-8')
count = 0
R2F = []
RLF = []
for paragraph in test_corpus:
    tr4s.analyze(text=paragraph)
    summary = ''
    for item in tr4s.get_key_sentences(num=1): # 取一句话作为摘要
        summary = item.sentence
    rouge_scores = rouge.get_scores(summary, test_ground_truth[count])
    r2f = rouge_scores[0]['rouge-2']['f']
    rlf = rouge_scores[0]['rouge-l']['f']
    R2F.append(r2f)
    RLF.append(rlf)
    result_f.write('R2F: '+str(r2f)[0:5]+' RLF: '+str(rlf)[0:5]+' S: ' + summary + '\nT: ' + paragraph + '\n')
    count += 1
print(np.mean(R2F),np.mean(RLF))
result_f.close()







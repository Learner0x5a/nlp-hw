from sklearn.feature_extraction.text import TfidfVectorizer, CountVectorizer
from sklearn.metrics import euclidean_distances
from rouge import Rouge 
import pickle,re
import numpy as np
import codecs
stopwords = codecs.open('cn_stopwords.txt','r',encoding='utf-8').readlines()
stopwords = [w.strip() for w in stopwords]

################################### char 分词 ###################################
# print('loading char texts...')
# f = open('demo_char_text.pkl','rb')
# TEXT = pickle.load(f)
# f.close()
# print('loading char ground-truths...')
# f = open('demo_char_summary.pkl','rb')
# char_summary = pickle.load(f)
# f.close()
################################### char 分词 ###################################


################################### jieba 分词 ###################################
# print('loading jieba texts...')
# f = open('demo_jieba_text.pkl','rb')
# TEXT = pickle.load(f)
# f.close()
# print('loading jieba ground-truths...')
# f = open('demo_jieba_summary.pkl','rb')
# SUMMARY = pickle.load(f)
# f.close()
################################### jieba 分词 ###################################

################################### thulac 分词 ###################################
print('loading thulac texts...')
f = open('demo_thulac_text.pkl','rb')
TEXT = pickle.load(f)
f.close()
print('loading thulac ground-truths...')
f = open('demo_thulac_summary.pkl','rb')
SUMMARY = pickle.load(f)
f.close()
for i in range(len(TEXT)):
    for j in range(len(TEXT[i])):
        TEXT[i][j] = TEXT[i][j][0]
for i in range(len(SUMMARY)):
    for j in range(len(SUMMARY[i])):
        SUMMARY[i][j] = SUMMARY[i][j][0]
################################### thulac 分词 ###################################

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



################################### 选择特征 count/tfidf ###################################
print('Training feature model...')
feature_model = TfidfVectorizer(token_pattern=r"(?u)\b\w+\b",stop_words=stopwords).fit(train_corpus)
# feature_model = CountVectorizer(token_pattern=r"(?u)\b\w+\b",stop_words=stopwords).fit(train_corpus)
# print(feature_model.vocabulary_)
################################### 选择特征 count/tfidf ###################################


print('Testing...')
rouge = Rouge()
result_f = open('results','w',encoding='utf-8')
count = 0
R2F = []
RLF = []
for paragraph in test_corpus:
    ################################### 选择打分方法 mean/euclidean_distances ###################################
    score = float('inf') # for euclidean_distances 
    # score = 0. # for mean score
    ################################### 选择打分方法 mean/euclidean_distances ###################################
    summary = ''
    paragraph_sparse_result = feature_model.transform([paragraph])
    for i, sentence in enumerate(re.split('，|。|；|？|！', paragraph)):
        if sentence:
            sparse_result = feature_model.transform([sentence])
        
            ################################### 打分方法 mean ###################################
            # sentence_score = np.mean(sparse_result)
            # if sentence_score > score:
            #     score = sentence_score
            #     summary = sentence
            ################################### 打分方法 mean/ ###################################

            ################################### 打分方法 euclidean_distances ###################################
            sentence_score = euclidean_distances(paragraph_sparse_result,sparse_result)[0][0]
            if sentence_score < score:
                score = sentence_score
                summary = sentence
            ################################### 打分方法 euclidean_distances ###################################
            
            # print(sentence_score)
    # print(summary,paragraph)
    rouge_scores = rouge.get_scores(summary, test_ground_truth[count])
    r2f = rouge_scores[0]['rouge-2']['f']
    rlf = rouge_scores[0]['rouge-l']['f']
    R2F.append(r2f)
    RLF.append(rlf)
    result_f.write('R2F: '+str(r2f)[0:5]+' RLF: '+str(rlf)[0:5]+' S: ' + summary + '\nT: ' + paragraph + '\n')
    count += 1
print(np.mean(R2F),np.mean(RLF))
result_f.close()



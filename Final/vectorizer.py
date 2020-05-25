import numpy as np
import os
################################################ rawdata loading ############################################
corpus = [] 
Y = []
labels = np.load('labels.npy')
for root,parent,files in os.walk('tokens'):
    for ir in files:
        f = open(os.path.join(root,ir),'r')
        lines = f.readlines()
        f.close()
        fullline = ''
        for line in lines:
            fullline += line
        corpus.append(fullline)
        if(labels[int(ir.split('.')[0])]>0.):
            Y.append([0.,1.])
            # Y.append(0.)
        else:
            Y.append([1.,0.])
            # Y.append(1.)

Y = np.array(Y)
################################################ rawdata loading ############################################


import gensim
from time import time
from gensim.models import Doc2Vec

################################################ doc2vec training ############################################
# DOCS = []
# count = 0
# for doc in corpus:
#     doc.replace('\n','')
#     words_doc = doc.split()
#     # for word in words_doc:
#     #     word.replace('\n','')
#     #     word.strip()
#     DOCS.append(gensim.models.doc2vec.TaggedDocument(words_doc,[count]))
#     count += 1

# # print(DOCS[0])
# print('Training...')
# start_time = time()
# model = gensim.models.doc2vec.Doc2Vec(vector_size=100)
# model.build_vocab(DOCS)
# model.train(DOCS, total_examples=model.corpus_count, epochs=model.epochs)
# end_time = time()
# print('model0 vector_size=100 Training for %fs' %(end_time-start_time))
# model_ = 'doc2vec.model'
# model.save(model_)
################################################ doc2vec training ############################################


########################################### TF-IDF preprocess ###########################################

from sklearn.feature_extraction.text import TfidfVectorizer
def get_key1(dct, value):
    return list(filter(lambda k:dct[k] == value, dct))
tfidf2 = TfidfVectorizer(min_df=1e-2)
re = tfidf2.fit_transform(corpus).toarray()
print(re.shape)
# print(tfidf2.vocabulary_)
print(len(tfidf2.vocabulary_))
print(get_key1(tfidf2.vocabulary_,1.0))

X = re.reshape(-1,6,827)

########################################### doc2vec preprocess ###########################################
# model = gensim.models.doc2vec.Doc2Vec.load('doc2vec.model')
# X = []
# for doc in corpus:
#     doc.replace('\n','')
#     X.append(model.infer_vector(doc.split()))
# X = np.array(X)

# X = X.reshape(-1,10,10)
# print(X.shape)

train_index = np.random.choice(X.shape[0],size=int(X.shape[0]*0.8),replace=False)
X_train = X[train_index]
y_train = Y[train_index]
test_index = np.delete(np.arange(X.shape[0]),train_index)
X_test = X[test_index]
y_test = Y[test_index]
print(X_train.shape,y_train.shape)

from keras.models import Sequential
from keras.layers import Dense, Dropout,LSTM
from keras.optimizers import rmsprop
from keras.callbacks import TensorBoard
tensorboard = TensorBoard(log_dir='logs/')
model = Sequential()
model.add(LSTM(64, input_dim=827, input_length=6,return_sequences=True))
model.add(LSTM(16))
model.add(Dense(2,activation='softmax'))
model.summary()
model.compile(loss='categorical_crossentropy',optimizer=rmsprop(),metrics=['accuracy'])
history = model.fit(X_train,y_train,batch_size=32,epochs=50,validation_data=(X_test, y_test),callbacks=[tensorboard])
score = model.evaluate(X_test, y_test)
print('Test loss:', score[0])
print('Test accuracy:', score[1])


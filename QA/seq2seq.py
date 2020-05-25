'''
参考：https://github.com/scionoftech/Question_Answering_System
'''
import json
import pandas as pd
import numpy as np
import matplotlib
matplotlib.use('AGG')
import matplotlib.pyplot as plt

from collections import Counter
import nltk 
'''
按报错手动下载相应的包，放到提示给出的位置
'''
# nltk.download('punkt')

with open('train-v2.0.json',mode='rt',encoding='utf-8') as file:
    qa_data = json.load(file)

# 过滤无效词
def charfilter(_word):
    valid = True
    for char in _word:
        if not char in 'abcdefghijklmnopqrstuvwxyz1234567890?.,':
            valid = False
            break
    return valid

def get_SQuAD_data(qa_data):
    data = []
    for instance in qa_data['data']:
        for paragraph in instance['paragraphs']:
            context = paragraph['context']
            qas = paragraph['qas']
            for qas_instance in qas:
                question = qas_instance['question']
                answers = qas_instance['answers']
                for answer in answers:
                    ans = answer['text']
                    data.append((context, question, ans))

    return data


print('Reading data...')
train_data = get_SQuAD_data(qa_data)[0:10000]
print('Total Q&A data size for training',len(train_data))

# def get_SQuAD_data(qa_data,max_data_count,max_context_seq_length,max_question_seq_length,max_target_seq_length):
#     data = []
#     for instance in qa_data['data']:
#         for paragraph in instance['paragraphs']:
#             context = paragraph['context']
#             context_wid_list = [w.lower() for w in nltk.word_tokenize(context) if charfilter(w)]
#             if len(context_wid_list) > max_context_seq_length:
#                 continue
#             qas = paragraph['qas']
#             for qas_instance in qas:
#                 question = qas_instance['question']
#                 question_wid_list = [w.lower() for w in nltk.word_tokenize(question) if charfilter(w)]
#                 if len(question_wid_list) > max_question_seq_length:
#                     continue
#                 answers = qas_instance['answers']
#                 for answer in answers:
#                     ans = answer['text']
#                     answer_wid_list = [w.lower() for w in nltk.word_tokenize(ans) if charfilter(w)]
#                     if len(answer_wid_list) > max_target_seq_length:
#                         continue
#                     if len(data) < max_data_count:
#                         data.append((context, question, ans))

#             if len(data) >= max_data_count:
#                 break

#             break
#     return data

# print('Reading data...')
# max_data_count = 100000
# max_context_seq_length = 384
# max_question_seq_length = 60
# max_target_seq_length = 50
# train_data = get_SQuAD_data(qa_data,max_data_count,max_context_seq_length,max_question_seq_length,max_target_seq_length)
# print("Total Q&A data size",len(train_data))

# ############################### 建立字典 ###############################
# max_input_vocab_size = 5000
# max_target_vocab_size = 5000

# input_data_samples = []
# output_data_samples = []

# input_paragraph_max_seq_length = 0
# input_question_max_seq_length = 0
# target_max_seq_length = 0

# # 计数器
# input_paragraph_counter = Counter()
# input_question_counter = Counter()
# target_counter = Counter()

# count_total = 0
# for paragraph, question, answer in train_data:
#     # 分词，统一小写
#     paragraph_word_list = [w.lower() for w in nltk.word_tokenize(paragraph) if charfilter(w)]
#     question_word_list = [w.lower() for w in nltk.word_tokenize(question) if charfilter(w)]
#     answer_word_list = [w.lower() for w in nltk.word_tokenize(answer) if charfilter(w)]

#     output_data = ['START'] + answer_word_list + ['END']

#     # 神经网络的输入
#     input_data_samples.append([paragraph_word_list, question_word_list])
#     # 神经网络的输出
#     output_data_samples.append(output_data)

#     count_total += 1
#     if count_total % 5000 == 0:
#         print('Tokenizing...',count_total)

#     for w in paragraph_word_list:
#         input_paragraph_counter[w] += 1
#     for w in question_word_list:
#         input_question_counter[w] += 1
#     for w in output_data:
#         target_counter[w] += 1

#     input_paragraph_max_seq_length = max(input_paragraph_max_seq_length, len(paragraph_word_list))
#     input_question_max_seq_length = max(input_question_max_seq_length, len(question_word_list))
#     target_max_seq_length = max(target_max_seq_length, len(output_data))

# input_paragraph_word2idx = {}
# input_question_word2idx = {}
# target_word2idx = {}

# # word2index
# for idx, word in enumerate(input_paragraph_counter.most_common(max_input_vocab_size)):
#     input_paragraph_word2idx[word[0]] = idx + 2 # 预留两个token，一个是PAD，一个是UNK
# for idx, word in enumerate(input_question_counter.most_common(max_input_vocab_size)):
#     input_question_word2idx[word[0]] = idx + 2 # 预留两个token，一个是PAD，一个是UNK
# for idx, word in enumerate(target_counter.most_common(max_target_vocab_size)):
#     target_word2idx[word[0]] = idx + 1 # 预留一个token，即UNK

# target_word2idx['UNK'] = 0
# input_paragraph_word2idx['PAD'] = 0
# input_paragraph_word2idx['UNK'] = 1
# input_question_word2idx['PAD'] = 0
# input_question_word2idx['UNK'] = 1

# # index2word
# input_paragraph_idx2word = dict([(idx, word) for word, idx in input_paragraph_word2idx.items()])
# input_question_idx2word = dict([(idx, word) for word, idx in input_question_word2idx.items()])
# target_idx2word = dict([(idx, word) for word, idx in target_word2idx.items()])

# num_input_paragraph_tokens = len(input_paragraph_idx2word)
# num_input_question_tokens = len(input_question_idx2word)
# num_target_tokens = len(target_idx2word)

# print(num_input_paragraph_tokens,num_input_question_tokens,num_target_tokens)
# np.save('dicts.npy',np.array([input_paragraph_word2idx,input_question_word2idx,target_word2idx,input_paragraph_idx2word,input_question_idx2word,target_idx2word]))
# np.save('lens.npy',np.array([input_paragraph_max_seq_length,input_question_max_seq_length,target_max_seq_length]))

# ############################### Encoding - word2idx ###############################
# X = []
# Y = []

# for input_data, output_data in zip(input_data_samples, output_data_samples):
#     input_paragraph_encoded_data = []
#     input_question_encoded_data = []
#     target_encoded_data = []
#     input_paragraph_data, input_question_data = input_data
#     for word in input_paragraph_data:
#         if word in input_paragraph_word2idx:
#             input_paragraph_encoded_data.append(input_paragraph_word2idx[word])
#         else: # OOV
#             input_paragraph_encoded_data.append(1)
#     for word in input_question_data:
#         if word in input_question_word2idx:
#             input_question_encoded_data.append(input_question_word2idx[word])
#         else: # OOV
#             input_question_encoded_data.append(1)
#     for word in output_data:
#         if word in target_word2idx:
#             target_encoded_data.append(target_word2idx[word])
#         else: # OOV
#             target_encoded_data.append(0)
#     X.append([input_paragraph_encoded_data, input_question_encoded_data])
#     Y.append(target_encoded_data)

# print(output_data,target_encoded_data)

# np.save('X.npy',X)
# np.save('Y.npy',Y)

############################### 神经网络 ###############################
from sklearn.model_selection import train_test_split
from keras.models import Sequential, Model
from keras.layers import Embedding
from keras.layers import Permute, dot, add, concatenate
from keras.layers import LSTM, Dense, Dropout, Input, Activation,RepeatVector, CuDNNLSTM
from keras.utils import to_categorical
from keras.preprocessing.text import Tokenizer
from keras.preprocessing.sequence import pad_sequences
from keras.callbacks import ModelCheckpoint,EarlyStopping,ReduceLROnPlateau
from keras import optimizers
from keras.callbacks import History
from keras.utils import multi_gpu_model 

X = np.load('X.npy',allow_pickle=True)
Y = np.load('Y.npy',allow_pickle=True)
input_paragraph_word2idx,input_question_word2idx,target_word2idx,input_paragraph_idx2word,input_question_idx2word,target_idx2word = np.load('dicts.npy',allow_pickle=True)
input_paragraph_max_seq_length,input_question_max_seq_length,target_max_seq_length = np.load('lens.npy',allow_pickle=True)

num_input_paragraph_tokens = len(input_paragraph_idx2word)
num_input_question_tokens = len(input_question_idx2word)
num_target_tokens = len(target_idx2word)


batch_size = 64
epochs = 2
seed = 1

x_train, x_test, y_train, y_test = train_test_split(X, Y, test_size=0.2,random_state=seed)

# generator
def generate_batch(input_paragraph_max_seq_length,input_question_max_seq_length,target_max_seq_length,num_target_tokens, input_data, output_data, batch_size):
    num_batches = len(input_data)//batch_size # 除法取整
    while True:
        for batchIdx in range(0, num_batches):
            start = batchIdx * batch_size
            end = (batchIdx + 1) * batch_size
            encoder_input_paragraph_data_batch = []
            encoder_input_question_data_batch = []
            for input_paragraph_data, input_question_data in input_data[start:end]:
                encoder_input_paragraph_data_batch.append(input_paragraph_data)
                encoder_input_question_data_batch.append(input_question_data)
            encoder_input_paragraph_data_batch = pad_sequences(encoder_input_paragraph_data_batch,
                                                               input_paragraph_max_seq_length)
            encoder_input_question_data_batch = pad_sequences(encoder_input_question_data_batch,
                                                              input_question_max_seq_length)
            decoder_target_data_batch = np.zeros(shape=(batch_size, target_max_seq_length, num_target_tokens))
            decoder_input_data_batch = np.zeros(shape=(batch_size, target_max_seq_length, num_target_tokens))
            for lineIdx, target_wid_list in enumerate(output_data[start:end]): 
                for idx, wid in enumerate(target_wid_list):
                    if wid == 0:  # OOV
                        continue
                    decoder_input_data_batch[lineIdx, idx, wid] = 1 
                    if idx > 0:
                        decoder_target_data_batch[lineIdx, idx - 1, wid] = 1 # 每个在answer中的单词，标签置1
            yield [encoder_input_paragraph_data_batch, encoder_input_question_data_batch,
                   decoder_input_data_batch], decoder_target_data_batch

def create_model(num_encoder_paragraph_tokens,max_encoder_paragraph_seq_length,
                 num_encoder_question_tokens,max_encoder_question_seq_length,num_decoder_tokens):

    hidden_units = 128
    embed_hidden_units = 100

    context_inputs = Input(shape=(None,), name='context_inputs')
    encoded_context = Embedding(input_dim=num_encoder_paragraph_tokens, output_dim=embed_hidden_units,
                                    input_length=max_encoder_paragraph_seq_length,
                                    name='context_embedding')(context_inputs)
    encoded_context = Dropout(0.3)(encoded_context)

    question_inputs = Input(shape=(None,), name='question_inputs')
    encoded_question = Embedding(input_dim=num_encoder_question_tokens, output_dim=embed_hidden_units,
                                     input_length=max_encoder_question_seq_length,
                                     name='question_embedding')(question_inputs)
    encoded_question = Dropout(0.3)(encoded_question)
    encoded_question = CuDNNLSTM(units=embed_hidden_units, name='question_lstm')(encoded_question)
    encoded_question = RepeatVector(max_encoder_paragraph_seq_length)(encoded_question)

    merged = add([encoded_context, encoded_question])

    encoder_lstm = CuDNNLSTM(units=hidden_units, return_state=True, name='encoder_lstm')
    encoder_outputs, encoder_state_h, encoder_state_c = encoder_lstm(merged)
    encoder_states = [encoder_state_h, encoder_state_c]

    decoder_inputs = Input(shape=(None, num_decoder_tokens), name='decoder_inputs')
    decoder_lstm = CuDNNLSTM(units=hidden_units, return_state=True, return_sequences=True, name='decoder_lstm')
    decoder_outputs, decoder_state_h, decoder_state_c = decoder_lstm(decoder_inputs,
                                                                         initial_state=encoder_states)
    decoder_dense = Dense(units=num_decoder_tokens, activation='softmax', name='decoder_dense')
    decoder_outputs = decoder_dense(decoder_outputs)

    model = Model([context_inputs, question_inputs, decoder_inputs], decoder_outputs)
    model = multi_gpu_model(model, gpus=2) 
    model.compile(optimizer='rmsprop', loss='categorical_crossentropy', metrics=['accuracy'])

    encoder_model = Model([context_inputs, question_inputs], encoder_states)

    decoder_state_inputs = [Input(shape=(hidden_units,)), Input(shape=(hidden_units,))]
    decoder_outputs, state_h, state_c = decoder_lstm(decoder_inputs, initial_state=decoder_state_inputs)
    decoder_states = [state_h, state_c]
    decoder_outputs = decoder_dense(decoder_outputs)
    decoder_model = Model([decoder_inputs] + decoder_state_inputs, [decoder_outputs] + decoder_states)

    return model, encoder_model, decoder_model

# model, encoder_model, decoder_model = create_model(num_input_paragraph_tokens,input_paragraph_max_seq_length,
#                  num_input_question_tokens,input_question_max_seq_length,num_target_tokens)
# model.summary()

# train_gen = generate_batch(input_paragraph_max_seq_length,input_question_max_seq_length,target_max_seq_length,num_target_tokens, x_train, y_train, batch_size)
# test_gen = generate_batch(input_paragraph_max_seq_length,input_question_max_seq_length,target_max_seq_length,num_target_tokens, x_test, y_test, batch_size)
# train_num_batches = len(x_train)//batch_size
# test_num_batches = len(x_test)//batch_size

# history = model.fit_generator(generator=train_gen, steps_per_epoch=train_num_batches, epochs=epochs, verbose=1, validation_data=test_gen, validation_steps=test_num_batches)


# model.save('seq2seq_model.h5')
# encoder_model.save('encoder_model.h5')
# decoder_model.save('decoder_model.h5')

from keras.models import load_model
model = load_model('seq2seq_model.h5')
encoder_model = load_model('encoder_model.h5')
decoder_model = load_model('decoder_model.h5')


def reply(paragraph, question):
    input_paragraph_seq = []
    input_question_seq = []
    input_paragraph_wid_list = []
    input_question_wid_list = []
    input_paragraph_text = paragraph.lower()
    input_question_text = question.lower()
    for word in nltk.word_tokenize(input_paragraph_text):
        if not charfilter(word):
            continue
        idx = 1  # default [UNK]
        if word in input_paragraph_word2idx:
            idx = input_paragraph_word2idx[word]
        input_paragraph_wid_list.append(idx)
    for word in nltk.word_tokenize(input_question_text):
        if not charfilter(word):
            continue
            idx = 1  # default [UNK]
        if word in input_question_word2idx:
            idx = input_question_word2idx[word]
        input_question_wid_list.append(idx)
    input_paragraph_seq.append(input_paragraph_wid_list)
    input_question_seq.append(input_question_wid_list)

    input_paragraph_seq = pad_sequences(input_paragraph_seq, input_paragraph_max_seq_length)
    input_question_seq = pad_sequences(input_question_seq, input_question_max_seq_length)
    states_value = encoder_model.predict([input_paragraph_seq, input_question_seq])

    target_seq = np.zeros((1, 1, num_target_tokens))
    target_seq[0, 0, target_word2idx['START']] = 1
    target_text = ''
    target_text_len = 0
    terminated = False
    while not terminated:
        output_tokens, h, c = decoder_model.predict([target_seq] + states_value)

        sample_token_idx = np.argmax(output_tokens[0, -1, :])
        sample_word = target_idx2word[sample_token_idx]
        target_text_len += 1

        if sample_word != 'START' and sample_word != 'END':
            target_text += ' ' + sample_word

        if sample_word == 'END' or target_text_len >= target_max_seq_length:
            terminated = True

        target_seq = np.zeros((1, 1, num_target_tokens))
        target_seq[0, 0, sample_token_idx] = 1

        states_value = [h, c]
    return target_text.strip()

# with open('dev-v2.0.json',mode='rt',encoding='utf-8') as file:
#     qa_data = json.load(file)
# test_data = get_test_SQuAD_data(qa_data)

for paragraph, question, actual_answer in train_data:
    predicted_answer = reply(paragraph, question)
    if predicted_answer:
        print('context: ', paragraph.encode('utf-8'))
        print('question: ', question.encode('utf-8'))
        print({'guessed_answer': predicted_answer.encode('utf-8'), 'actual_answer': actual_answer.encode('utf-8')})
        print("\n")

print('context: ', paragraph.encode('utf-8'))
print('question: ', question.encode('utf-8'))
print({'guessed_answer': predicted_answer.encode('utf-8'), 'actual_answer': actual_answer.encode('utf-8')})
print("\n")

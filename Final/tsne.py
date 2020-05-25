from sklearn.manifold import TSNE
import matplotlib
matplotlib.use('AGG')
import matplotlib.pyplot as plt
import gensim


def plot_with_labels(low_dim_embs, labels, filename):   # 绘制词向量图
    assert low_dim_embs.shape[0] >= len(labels), 'More labels than embeddings'
    print('Start drawing......')
    plt.figure(figsize=(100, 100))  # in inches
    for i, label in enumerate(labels):
        x, y = low_dim_embs[i, :]
        plt.scatter(x, y)	# 画点，对应low_dim_embs中每个词向量
        plt.annotate(label,	# 显示每个点对应哪个单词
                     xy=(x, y),
                     xytext=(5, 2),
                     textcoords='offset points',
                     ha='right',
                     va='bottom')
    plt.savefig(filename)
    print('Done!')
    # plt.show()



model_path = 'doc2vec.model'  #doc2vec model
model = gensim.models.doc2vec.Doc2Vec.load(model_path)
vocab = model.wv.vocab.keys()
#print(vocab)


word=[]
vec=[]
for i in vocab:
    word.append(i)
    vec.append(model.wv[i])
print(len(word))

tsne = TSNE(n_components=2,verbose=1,n_jobs=64)
# #只绘制前n个词
# plot_only = 300
# low_dim_embs = tsne.fit_transform(vec[:plot_only])
# labels = [word[i] for i in range(plot_only)]
# 绘制所有
low_dim_embs=tsne.fit_transform(vec)
labels=word

# #print(low_dim_embs)
# for i in range(0,plot_only):
#     print(low_dim_embs[i],labels[i])

plot_with_labels(low_dim_embs, labels, 'tsne.png')

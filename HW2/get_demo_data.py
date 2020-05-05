import pickle
'''
取前11000条数据
'''

print('loading char texts...')
f = open('char_text.pkl','rb')
demo_char_text = pickle.load(f)[0:11000]
f.close()
print('writing demo char texts...')
f = open('demo_char_text.pkl','wb')
pickle.dump(demo_char_text,f)
f.close()


print('loading char ground-truths...')
f = open('char_summary.pkl','rb')
demo_char_summary = pickle.load(f)[0:11000]
f.close()
print('writing demo char ground-truths...')
f = open('demo_char_summary.pkl','wb')
pickle.dump(demo_char_summary,f)
f.close()

print('loading jieba texts...')
f = open('jieba_text.pkl','rb')
demo_jieba_text = pickle.load(f)[0:11000]
f.close()
print('writing demo jieba texts...')
f = open('demo_jieba_text.pkl','wb')
pickle.dump(demo_jieba_text,f)
f.close()


print('loading jieba ground-truths...')
f = open('jieba_summary.pkl','rb')
demo_jieba_summary = pickle.load(f)[0:11000]
f.close()
print('writing demo jieba ground-truths...')
f = open('demo_jieba_summary.pkl','wb')
pickle.dump(demo_jieba_summary,f)
f.close()



print('loading thulac texts...')
f = open('thulac_text.pkl','rb')
demo_thulac_text = pickle.load(f)[0:11000]
f.close()
print('writing demo thulac texts...')
f = open('demo_thulac_text.pkl','wb')
pickle.dump(demo_thulac_text,f)
f.close()


print('loading thulac ground-truths...')
f = open('thulac_summary.pkl','rb')
demo_thulac_summary = pickle.load(f)[0:11000]
f.close()
print('writing demo thulac ground-truths...')
f = open('demo_thulac_summary.pkl','wb')
pickle.dump(demo_thulac_summary,f)
f.close()

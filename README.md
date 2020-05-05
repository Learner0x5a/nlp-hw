# nlp-hw
2019-2020春季学期 自然语言处理与文本挖掘

HW1  字典分词、CRF、LSTM（bug未调通）
 + `CRF/crf.py`  /   `python3`  /  `CRF++` 结合报告调整特征模板`template`及参数`use_gram`
 + `DICT/max-match.py`  /  `python3` 

HW2  自动摘要（LCSTS数据集太大，不上传）
 + `preprocess.py` / `python3` /   数据预处理，去除特殊字符，三种分词
 + `get_demo_data.py`  /   `python3`  /  用一部分数据做demo
 + `main.py`  /  `python3`  /  特征打分式摘要：比较分词、特征、打分方式的影响
 + `textrank.py` / `python3` /  图排序式摘要：TextRank (jieba)
 + TODO: 神经网络自动摘要。 `doc2vec + seq2seq` / `BERT`
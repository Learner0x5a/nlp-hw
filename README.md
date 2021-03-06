# nlp-hw
2019-2020春季学期 清华大学电子工程系 研究生课程 自然语言处理与文本挖掘

## HW1  字典分词、CRF、LSTM（bug未调通）
 + `CRF/crf.py`  /   `python3`  /  `CRF++` 结合报告调整特征模板`template`及参数`use_gram`
 + `DICT/max-match.py`  /  `python3` 

## HW2  自动摘要（LCSTS数据集太大，不上传）
 + `preprocess.py` / `python3` /   数据预处理，去除特殊字符，三种分词
 + `get_demo_data.py`  /   `python3`  /  用一部分数据做demo
 + `main.py`  /  `python3`  /  特征打分式摘要：比较分词、特征、打分方式的影响
 + `textrank.py` / `python3` /  图排序式摘要：TextRank (jieba)
 + TODO: 神经网络自动摘要。 `doc2vec + seq2seq` / `BERT`

## Final - SQUAD数据集评测 `:cry:放弃` `目录QA`
 + seq2seq模型，收敛太慢，1个epoch要1h
 + BERT模型，直接爆内存/显存

## Final - 代码分发 复现&改进"code mapping in heterogeneous platforms using deep learning and llvm-ir" (DAC '19, Proceedings of the 56th Annual Design Automation Conference 2019)
 + 数据集：来自"End-to-end Deep Learning of Optimization Heuristics" (PACT'17 Best Paper) 
 + 预处理：TF-IDF vs. Doc2vec
 + 流程
  - 1. load_csv.py: 从csv文件提取源文件
  - 2. clang编译源文件，例如 clang -c -x cl -emit-llvm -S -cl-std=CL2.0 -Xclang -finclude-default-header 0.cl -o 0.ll
  - 3. tokenizer.py: 符号化IR
  - 4. vectorizer.py: 预处理&神经网络
 + 网络：LSTM
 + 可视化：TSNE
 + Tensorflow版本：1.12.0
 + Clang版本：10.0

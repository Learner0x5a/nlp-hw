import pandas as pd
import numpy as np
pd.set_option('display.max_rows', 5)
raw_dataset = pd.read_csv("./cgo17-nvidia.csv")
print(raw_dataset)
benchmarks = raw_dataset['benchmark'].values
code_snippets = raw_dataset['src'].values
time_cpu = raw_dataset['runtime_cpu']
time_gpu = raw_dataset['runtime_gpu']

# ratio_GdivC = time_gpu/time_cpu
# upper_bound = max(ratio_GdivC)
# print(ratio_GdivC,min(ratio_GdivC),max(ratio_GdivC))
# uniform_ratio = ratio_GdivC/upper_bound
# print(uniform_ratio,min(uniform_ratio),max(uniform_ratio))
# labels = np.array(uniform_ratio)

diff_GdivC = np.sign(time_gpu-time_cpu)
labels = np.array(diff_GdivC)

np.save('labels.npy',labels)
for i in range(len(code_snippets)):
    np.savetxt('src/' + str(i) + '.src',[code_snippets[i]],fmt='%s')

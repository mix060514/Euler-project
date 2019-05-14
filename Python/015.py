import numpy as np
arr = np.zeros((21,21),dtype=np.long)
for i in range(21):
    for j in range(21):
        arr[i][0]=1
        arr[0][j]=1
        arr[0][0]=0
for i in range(1,21):
    for j in range(1,21):
        arr[i][j]=arr[i-1][j]+arr[i][j-1]
print arr[20][20]

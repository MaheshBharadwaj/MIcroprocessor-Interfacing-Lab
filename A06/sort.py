arr = [2,7,4,8,16,12]


for i in range(len(arr) - 1):
    for j in range(len(arr) - i -1):
        if arr[j] > arr[j+1]:
            tmp = arr[j]
            arr[j] = arr[j+1]
            arr[j+1] = tmp
print(arr)
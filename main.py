import array as arr
#arr = [1, 2, 11, 22, 233, 5, 7, 2]
#arr.sort()
#print(arr)
#print(arr[-2])

temp = arr.array('i', [])
print(temp)
numbers = arr.array('i', [1, 2, 11, 22, 233, 5, 7, 2])
print(numbers)
#lis = numbers
for num in range(len(numbers)):
    for numb in range(len(numbers)):
        if numbers[num] > numbers[numb]:

            temp = numbers[num]
            numbers[num] = numbers[numb]
            numbers[numb] = temp

            #print(temp, numbers[num], numbers[numb])

print("Second highest value in the int array  : ", numbers[1])

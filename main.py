import array as arr
#arr = [1, 2, 11, 22, 233, 5, 7, 2]
#arr.sort()
#print(arr)
#print(arr[-2])


# temp = arr.array('i', [])
# print(temp)
# numbers = arr.array('i', [1, 2, 11, 22, 233, 5, 7, 2])
# print(numbers)
# #lis = numbers
# for num in range(len(numbers)):
#     for numb in range(len(numbers)):
#         if numbers[num] > numbers[numb]:
#
#             temp = numbers[num]
#             numbers[num] = numbers[numb]
#             numbers[numb] = temp
#
#             #print(temp, numbers[num], numbers[numb])
#
# print("Second highest value in the int array  : ", numbers[1])


# # Non local variable difference in nested function
# def outer():
#     i = 10
#
#     def inner():
#         nonlocal i
#         i = i + 4
#         print("Inner : ", i)
#     inner()
#     print("Outer : ", i)
#
#
# outer()


# def some_func(a, b, c=0, d=1):
#     return a+b+c+d
#
#
# result = some_func(1, 2, d=4)
# print(result)



my_list = [1, 4, 8, 11, 15]
squared_list = [x**2 for x in my_list]     #list comprehension
print(squared_list)



squared_key = {x: x**2 for x in my_list}
print(squared_key)





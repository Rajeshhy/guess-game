#Student grade manager. 
# Store marks in an array. 
# Use a for loop to find the total, average, highest and lowest.
#  Use if to give each student a grade (A, B, C, Fail). 
# Use a while loop for a menu (“1. Add mark, 2. Show report, 3. Exit”).


# array = [35,45,30,40,35,35,20,25,45,40]
# array1 = []
# sum = 0
# len(array)
# print(len(array))


# for i in array:
#     sum += i
# print(sum)

# mean = sum/(len(array))
# print(mean)

# maximum = max(array)
# print(maximum)

# minimum = min(array)
# print(minimum)



Marks = []


right_answer = True

while True:
    select_step = int(input("select step(1:add marks,2:grade,3:exit):"))
    if select_step == 1:
        while True:
            add_mark = int(input("add mark:"))
            Marks.append(add_mark)
            print(Marks)
            exit = input("do you wanna return to the previous step(yes,no,exit):")
            print(exit)
            if exit == "yes":
                break


    if select_step == 2:
        while True:
            show_mark = int(input("show mark:"))
            if show_mark > 40:
                print("grade A")
            elif show_mark > 30:
                print("grade B")
            elif show_mark > 20:
                print("grade C")
            else:
                print("fail")
            break


    if select_step == 3:
        break

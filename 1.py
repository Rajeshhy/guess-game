#print function

#print("rajesh don")
#print(20+30)
#print(2*5)
#print(10/2)
#print("10+20")

#varibles
#name = "rajesh"
#height = 5.9
#is_handsome = True
#age = 23
#age = 24 
#takes the latest value of age

#print(type(age))
#print(type(name))
#print(type(height))
#print(type(is_handsome))

#string is text or characters 
#integers is whole numbers
#float is decimal numbers
#boolean is true or false

#print(10 + 5)   # Addition
#print(10 - 5)   # Subtraction
#print(10 * 5)   # Multiplication
#print(10 / 5)   # Division
#print(10 // 3)  # Whole-number division
#print(10 % 3)   # Remainder
#print(2 ** 3)   # Power

name = input("enter your name: ")
print("Hello", name)
age=input("enter your age: ")
print("your age is", age)


#input function treats all input as string to counter that we can use int() to convert string to integer
a = int(input("Enter first number: "))
b = int(input("Enter second number: "))

print(a + b)

price1 = float(input("Enter first product price: "))
price2 = float(input("Enter second product price: "))

total = price1 + price2

print("Total price:", total)


# ==	Equal to	5 == 5	True
# !=	Not equal to	5 != 3	True
# >	Greater than	8 > 5	True
# <	Less than	3 < 5	True
# >=	Greater than or equal to	5 >= 5	True
# <=	Less than or equal to	4 <= 5	True

x = 15

print(x > 10)
print(x == 10)
print(x <= 15)
print(x != 15)



#if statement

x = 2 
y = 10

if x + y <40:
    print("x is less than 40")
else:
    print("x is greater than or equal to 40")


#else if statement (always start from higher value to lower value)
marks = int(input("Enter your marks: "))

if marks >= 80:
    print("Grade A")
elif marks >= 60:
    print("Grade B")
elif marks >= 40:
    print("Grade C")
else:
    print("Fail")



   #Logical operators

#and	Both conditions must be true
#or	At least one condition must be true
#not	Reverses a Boolean value


#and operator
marks = 65
attendance = 80

if marks >= 40 and attendance >= 75:
    print("Eligible to pass")
else:
    print("Requirements not met")



# The or operator Suppose a shop gives a discount to customers who are members or have a coupon.

is_member = False
has_coupon = True

if is_member or has_coupon:
    print("Discount available")
else:
    print("No discount")


#not operator
#not reverses the truth value.

is_raining = False

if not is_raining:
    print("You can go outside")



#looping statements

#for loops

for i in range(5):
    print("Hello")

#range(start, stop)


#range(start, stop, step)

for i in range(2, 11, 2):
    print(i)


#The while loop. A while loop repeats a block as long as a condition is true.

i = 1

while i <= 5:
    print(i)
    i = i + 1


#The break statement. break immediately exits the current loop.

for i in range(1, 11):
    if i == 5:
        break
    print(i)


#The continue statement. continue skips the rest of the current iteration and moves to the next one.

for i in range(1, 6):
    if i == 3:
        continue
    print(i)


#Nested loops. A nested loop is a loop inside a different loop.

for i in range(1, 4):
    for j in range(1, 3):
        print(i, j)

#1 1
#1 2
#2 1
#2 2
#3 1
#3 2



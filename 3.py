# Number guessing game. The computer picks a secret number. 
# A while loop keeps asking until the player gets it right, 
# and if tells them “too high” or “too low.” 
# Store every guess in an array,
# then use a for loop at the end to print all their attempts.



# array = [1,2,3,4,5,6,7,8,9,10]

# a = 4 no use of while in this or while a == 4

# while True:
#     guess = int(input("Guess a number between 1 and 10: "))
#     if guess < a:
#        print("too low")
#     elif guess > a:
#         print("too high")
#     else:
#         print("you got it")
#         break

import random
guesses = []
a = random.randrange(1,10)
right_answer = False


while right_answer is False:
    guess = int(input("Guess a number between 1 and 10: "))
    guesses.append(guess)
    if guess < a:
       print("too low")
    elif guess > a:
        print("too high")
    else:
        print("you got it")
        right_answer = True
print("Your guesses:",guesses)




'''Que 3 : Python Program to Check if a Number is Positive, Negative or zero'''

def check_number(num):
    if num > 0:
        return "Positive"
    elif num < 0:
        return "Negative"
    else:
        return "Zero"

# Input from the user
num = float(input("Enter a number: "))

result = check_number(num)

print(f"The number is {result}.")

'''Output:
Enter a number: -34
The number is Negative.
Enter a number: 55
The number is Positive.'''

'''1. Write a Python program to handle a ZeroDivisionError exception when dividing a number by zero.'''

try:
    # Taking input from the user
    num1 = float(input("Enter the numerator: "))
    num2 = float(input("Enter the denominator: "))
    
    # Attempt to divide
    result = num1 / num2
    print(f"The result of division is: {result}")
    
except ZeroDivisionError:
    print("Error! Division by zero is not allowed.")


'''Output:
Enter the numerator: 2
Enter the denominator: 5
The result of division is: 0.4

Enter the numerator: 10
Enter the denominator: 0
Error! Division by zero is not allowed.'''

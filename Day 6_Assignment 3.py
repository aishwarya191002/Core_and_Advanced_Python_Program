'''3. Write a python program finding the factorial of a given number using a while loop.'''

# Function to calculate the factorial
def factorial(num):
    result = 1
    while num > 1:
        result *= num
        num -= 1
    return result

# Input from the user
number = int(input("Enter a number: "))

# Check if the number is non-negative
if number < 0:
    print("Factorial does not exist for negative numbers.")
else:
    # Call the function to find the factorial
    fact = factorial(number)
    print(f"The factorial of {number} is {fact}.")


'''output:
Enter a number: 5
The factorial of 5 is 120'''

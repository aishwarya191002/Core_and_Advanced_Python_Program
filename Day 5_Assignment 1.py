'''Que 1.  Declare a div() function with two parameters. Then call the function and pass two numbers and display their division. '''

# Declare the div function with two parameters
def div(num1, num2):
    # Check if num2 is not zero to avoid division by zero error
    if num2 != 0:
        result = num1 / num2
        return result
    else:
        return "Error: Division by zero is not allowed"

# Call the function and pass two numbers
num1 = 10
num2 = 2
result = div(num1, num2)

# Display the result
print(f"The division of {num1} by {num2} is: {result}")

'''Output : The division of 10 by 2 is: 5.0'''

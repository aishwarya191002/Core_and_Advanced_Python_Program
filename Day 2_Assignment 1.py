# Function to multiply and add two numbers
def multiply_and_add(num1, num2):
    multiplication_result = num1 * num2
    addition_result = num1 + num2
    return multiplication_result, addition_result

# Example numbers
num1 = 5
num2 = 3

# Call the function and print the results
mult_result, add_result = multiply_and_add(num1, num2)
print(f"Multiplication of {num1} and {num2} is: {mult_result}")
print(f"Sum of {num1} and {num2} is: {add_result}")

''' Output: Multiplication of 5 and 3 is: 15
Sum of 5 and 3 is: 8'''

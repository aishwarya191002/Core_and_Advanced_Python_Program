'''Que 2: Declare a square() function with one parameter.Then call the function and pass one number and display the square of that number.'''

# Declare the square function with one parameter
def square(num):
    result = num * num
    return result

# Call the function and pass a number
num = 5
result = square(num)

# Display the result
print(f"The square of {num} is: {result}")

'''Output: The square of 5 is: 25'''

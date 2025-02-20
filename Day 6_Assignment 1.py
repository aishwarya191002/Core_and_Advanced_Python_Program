'''1. Write a python program to reverse a number using a while loop.'''

# Function to reverse a number
def reverse_number(num):
    reversed_num = 0
    while num > 0:
        # Get the last digit of the number
        last_digit = num % 10
        # Add the last digit to the reversed number
        reversed_num = (reversed_num * 10) + last_digit
        # Remove the last digit from the number
        num = num // 10
    return reversed_num

# Input from the user
number = int(input("Enter a number: "))

# Call the function to reverse the number
reversed_number = reverse_number(number)

# Output the reversed number
print("Reversed number is:", reversed_number)

'''Output:
Enter a number: 23
Reversed number is: 32 '''

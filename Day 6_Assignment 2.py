'''2. Write a python program to check whether a number is palindrome or not?'''

# Function to check if the number is a palindrome
def is_palindrome(num):
    # Reverse the number
    original_num = num
    reversed_num = 0
    while num > 0:
        last_digit = num % 10
        reversed_num = (reversed_num * 10) + last_digit
        num = num // 10
    
    # Check if the original number and reversed number are the same
    if original_num == reversed_num:
        return True
    else:
        return False

# Input from the user
number = int(input("Enter a number: "))

# Check if the number is a palindrome
if is_palindrome(number):
    print(f"{number} is a palindrome.")
else:
    print(f"{number} is not a palindrome.")


'''output:
Enter a number: 9
9 is a palindrome.
Enter a number: 87
87 is not a palindrome.'''

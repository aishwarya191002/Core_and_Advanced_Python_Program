'''2. Write a Python program that prompts the user to input an integer and raises a ValueError exception if the input is not a valid integer'''

try:
    # Taking input from the user
    user_input = input("Please enter an integer: ")

    # Trying to convert the input to an integer
    num = int(user_input)

    print(f"You entered the integer: {num}")

except ValueError:
    print("Error! That's not a valid integer.")


'''output:
Please enter an integer: 44
You entered the integer: 44'''

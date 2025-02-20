'''2. Write a Python program to get the largest and smallest number from a list without built in functions. '''

# List of numbers
numbers = [3, 1, 7, 9, 4, 2]

# Initialize the first element as both the largest and smallest
largest = smallest = numbers[0]

# Loop through the list to find the largest and smallest numbers
for num in numbers:
    if num > largest:
        largest = num
    if num < smallest:
        smallest = num

# Print the result
print("The largest number is:", largest)
print("The smallest number is:", smallest)

'''Output:
The largest number is: 9
The smallest number is: 1'''

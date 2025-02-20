'''3. Write a Python program to find duplicate values from a list and display those.'''

# List of numbers
numbers = [1, 2, 3, 4, 2, 5, 6, 3, 7]

# Create an empty list to store duplicates
duplicates = []

# Loop through the list to find duplicates
for num in numbers:
    if numbers.count(num) > 1 and num not in duplicates:
        duplicates.append(num)

# Print the result
print("Duplicate values in the list are:", duplicates)

'''Output: Duplicate values in the list are: [2, 3]'''

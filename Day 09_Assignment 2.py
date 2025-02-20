'''2. Write a Python program to remove duplicate characters of a given string.''' 

# Input string
input_string = "String and String Function"

# Split the input string into words
words = input_string.split()

# Create an empty list to store the result
unique_words = []

# Loop through each word and add it to the result if it's not already in the list
for word in words:
    if word not in unique_words:
        unique_words.append(word)

# Join the unique words back into a string
output_string = ' '.join(unique_words)

# Output the result
print("Output:", output_string)



'''Output: String and Function'''

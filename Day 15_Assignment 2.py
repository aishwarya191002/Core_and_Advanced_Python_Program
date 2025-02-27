"2. Write a function in Python to count and display the total number of words in a text file “ABC.txt”"

def count_words():
    try:
        # Specify the file path
        file_path = r"C:\Users\ASUS\Desktop\python\ABC.txt"
        
        # Initialize a word count variable
        word_count = 0
        
        # Open the file in read mode
        with open(file_path, "r") as file:
            # Read each line from the file
            for line in file:
                # Split the line into words and count them
                words = line.split()
                word_count += len(words)
        
        # Display the total word count
        print(f"Total number of words in the file: {word_count}")
    
    except FileNotFoundError:
        print("The file 'ABC.txt' was not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Call the function to count and display the total number of words in the file
count_words()

"Output: Total number of words in the file: 2"

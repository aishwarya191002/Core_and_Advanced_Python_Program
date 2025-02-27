"1. Write a function in python to read the content from a text file ABC.txt line by line and display the same on screen. "

def read_file():
    try:
        # Update the file path to the correct one
        file_path = r"C:\Users\ASUS\Desktop\python\ABC.txt"
        
        # Open the file in read mode
        with open(file_path, "r") as file:
            # Read each line from the file and display it
            for line in file:
                print(line, end='')  # The 'end' parameter prevents extra new lines
    except FileNotFoundError:
        print("The file 'ABC.txt' was not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Call the function to read and display the content of the file
read_file()


"Output:
"Hello, Aishwarya"

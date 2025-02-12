'''Que no 2 : 2. Python Program to Find the Largest Among Three Numbers '''

def find_largest(num1, num2, num3):
    # Compare the numbers to find the largest
    if num1 >= num2 and num1 >= num3:
        return num1
    elif num2 >= num1 and num2 >= num3:
        return num2
    else:
        return num3

# Input from the user
num1 = float(input("Enter the first number: "))
num2 = float(input("Enter the second number: "))
num3 = float(input("Enter the third number: "))

largest = find_largest(num1, num2, num3)

print(f"The largest number is {largest}.")

'''Output:
Enter the first number: 12
Enter the second number: 34
Enter the third number: 55
The largest number is 55.0.'''

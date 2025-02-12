''' Que no -1 Python program to check leap year or not'''

def is_leap_year(year):
    # Leap year is divisible by 4, but not divisible by 100 unless also divisible by 400
    if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
        return True
    else:
        return False

# Input from the user
year = int(input("Enter a year: "))

if is_leap_year(year):
    print(f"{year} is a Leap Year.")
else:
    print(f"{year} is not a Leap Year.")

'''Output: Enter a year: 2025
2025 is not a Leap Year.'''

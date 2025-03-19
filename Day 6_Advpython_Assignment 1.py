'''Lab1:  Write a Python program to model a Library system. The program should include a class named Library with the following specifications: '''

class Library:
    # Class attributes
    total_books = 0
    all_books = []

    def __init__(self, name):
        # Instance attributes
        self.name = name
        self.borrowed_books = []

    def borrow_book(self, book):
        # Borrow a book if available
        if book in Library.all_books:
            # Add book to borrowed list
            self.borrowed_books.append(book)
            # Remove book from library collection
            Library.all_books.remove(book)
            # Decrease total book count
            Library.total_books -= 1
            print(f"{self.name} borrowed '{book}'.")
        else:
            print(f"Book '{book}' not available.")

    def return_book(self, book):
        # Return a borrowed book to the library
        if book in self.borrowed_books:
            # Add the book back to the library collection
            Library.all_books.append(book)
            # Remove book from borrowed list
            self.borrowed_books.remove(book)
            # Increase total book count
            Library.total_books += 1
            print(f"{self.name} returned '{book}'.")
        else:
            print(f"Book '{book}' was not borrowed by {self.name}.")

    @classmethod
    def view_library_books(cls):
        # View total books and list of available books in the library
        print(f"Total books in library: {cls.total_books}")
        print("Available books:")
        for book in cls.all_books:
            print(book)


# Setting up the library system with some books
Library.all_books = ['The Great Gatsby', '1984', 'To Kill a Mockingbird', 'Pride and Prejudice']
Library.total_books = len(Library.all_books)

# Creating library members
member1 = Library("Alice")
member2 = Library("Bob")

# Viewing available books in the library
Library.view_library_books()

# Member borrowing books
member1.borrow_book("1984")
member2.borrow_book("The Great Gatsby")
member1.borrow_book("Pride and Prejudice")

# Viewing available books after borrowing
Library.view_library_books()

# Member returning books
member1.return_book("1984")
member2.return_book("The Great Gatsby")

# Viewing available books after returning
Library.view_library_books()

# Trying to borrow a book that's not available
member1.borrow_book("1984")

'''Output:
Total books in library: 4
Available books:
The Great Gatsby
1984
To Kill a Mockingbird
Pride and Prejudice
Alice borrowed '1984'.
Bob borrowed 'The Great Gatsby'.
Alice borrowed 'Pride and Prejudice'.
Total books in library: 1
Available books:
To Kill a Mockingbird
Alice returned '1984'.
Bob returned 'The Great Gatsby'.
Total books in library: 3
Available books:
To Kill a Mockingbird
1984
The Great Gatsby
Alice borrowed '1984'.'''

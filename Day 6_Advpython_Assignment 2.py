''' Lab2:  Movie Library Create a class MovieLibrary that manages a collection of movies: 

 1. Class Attribute: ○ available_movies: A list of all movies available in the library.

 2. Instance Attributes: ○ member_name: The name of the library member. ○ borrowed_movies: A list of movies borrowed by the member. 

3. Methods: ○ borrow_movie(self, movie): Borrows a movie from the library if available. 

 ○ return_movie(self, movie): Returns a movie to the library.

 ○ view_borrowed_movies(self): Prints a list of movies borrowed by the member'''

class MovieLibrary:
    # Class attribute
    available_movies = []

    def __init__(self, member_name):
        # Instance attributes
        self.member_name = member_name
        self.borrowed_movies = []

    def borrow_movie(self, movie):
        # Borrow a movie if available in the library
        if movie in MovieLibrary.available_movies:
            # Add the movie to the borrowed list
            self.borrowed_movies.append(movie)
            # Remove the movie from the available movies list
            MovieLibrary.available_movies.remove(movie)
            print(f"{self.member_name} borrowed '{movie}'.")
        else:
            print(f"'{movie}' is not available in the library.")

    def return_movie(self, movie):
        # Return a movie to the library
        if movie in self.borrowed_movies:
            # Remove the movie from the borrowed list
            self.borrowed_movies.remove(movie)
            # Add the movie back to the available movies list
            MovieLibrary.available_movies.append(movie)
            print(f"{self.member_name} returned '{movie}'.")
        else:
            print(f"'{movie}' was not borrowed by {self.member_name}.")

    def view_borrowed_movies(self):
        # Print the list of borrowed movies by the member
        if self.borrowed_movies:
            print(f"{self.member_name}'s borrowed movies:")
            for movie in self.borrowed_movies:
                print(movie)
        else:
            print(f"{self.member_name} has not borrowed any movies.")


# Setting up the movie library system with some movies
MovieLibrary.available_movies = ['Inception', 'The Dark Knight', 'Avatar', 'The Matrix']

# Creating library members
member1 = MovieLibrary("Alice")
member2 = MovieLibrary("Bob")

# Viewing available movies
print("Available movies in the library:")
print(MovieLibrary.available_movies)
print("\n")

# Member borrowing movies
member1.borrow_movie("Inception")
member2.borrow_movie("The Dark Knight")
member1.borrow_movie("Avatar")

# Viewing borrowed movies for each member
print("\n")
member1.view_borrowed_movies()
member2.view_borrowed_movies()

# Returning a movie
print("\n")
member1.return_movie("Inception")
member2.return_movie("The Dark Knight")

# Viewing borrowed movies after returning
print("\n")
member1.view_borrowed_movies()
member2.view_borrowed_movies()

# Viewing available movies after returning
print("\nAvailable movies in the library:")
print(MovieLibrary.available_movies)

'''Output:
Available movies in the library:
['Inception', 'The Dark Knight', 'Avatar', 'The Matrix']


Alice borrowed 'Inception'.
Bob borrowed 'The Dark Knight'.
Alice borrowed 'Avatar'.


Alice's borrowed movies:
Inception
Avatar
Bob's borrowed movies:
The Dark Knight


Alice returned 'Inception'.
Bob returned 'The Dark Knight'.


Alice's borrowed movies:
Avatar
Bob has not borrowed any movies.

Available movies in the library:
['The Matrix', 'Inception', 'The Dark Knight']'''

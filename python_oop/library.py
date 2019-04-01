# Class => Library
# Layers of abstraction => display available books, to find a book, to add a book

# Class => Costumer
# Layers of abstraction => request for a book, return a book


class Library:

    def __init__(self, list_books):
        self.books = list_books

    def display_available_books(self):
        print()
        print("Available books: ")
        for book in self.books:
            print(book)
        print()

    def lend_book(self, requested_book):
        if requested_book in self.books:
            print("You have now borrowed the book")
            self.books.remove(requested_book)
        else:
            print("Sorry, the book is not available in our list.")
        print()

    def add_book(self, returned_book):
        self.books.append(returned_book)
        print("You have returned the book. Thank you!")
        print()

class Costumer:
    def request_book(self):
        print("Enter the name of a book you wold like to borrow: ")
        self.book = input()
        return self.book


    def return_book(self):
        print("Enter the name of the book which you are returning: ")
        self.book = input()
        return self.book

library = Library(['clean code', 'introduction to algorithms and programming with python', 'pro git'])
costumer = Costumer()

while True:
    print("Enter 1 to display the available books")
    print("Enter 2 to request for a book")
    print("Enter 3 to return a book")
    print("Enter 4 to exit")

    user_choice = int(input())
    if user_choice is 1:
        library.display_available_books()
    elif user_choice is 2:
        requested_book = costumer.request_book()
        library.lend_book(requested_book)
    elif user_choice is 3:
        returned_book = costumer.return_book()
        library.add_book(returned_book)
    elif user_choice is 4:
        quit()






class Book {
  // Static property to keep track of the total number of Book objects created
  static int totalBooks = 0;

  // Instance properties
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  // Constructor
  Book(this.title, this.author, this.publicationYear) : pagesRead = 0 {
    totalBooks++;  // Increment the total number of books when a new instance is created
  }

  // Method to simulate reading pages
  void read(int pages) {
    pagesRead += pages;
  }

  // Getter for pagesRead
  int getPagesRead() {
    return pagesRead;
  }

  // Getter for title
  String getTitle() {
    return title;
  }

  // Getter for author
  String getAuthor() {
    return author;
  }

  // Getter for publicationYear
  int getPublicationYear() {
    return publicationYear;
  }

  // Method to get the book's age
  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

// Main function
void main() {
  // Create 3 Book objects
  Book book1 = Book("To Kill a Mockingbird", "Harper Lee", 1960);
  Book book2 = Book("1984", "George Orwell", 1949);
  Book book3 = Book("The Great Gatsby", "F. Scott Fitzgerald", 1925);

  // Simulate reading pages
  book1.read(150);
  book2.read(100);
  book3.read(200);

  // Print details for each book
  List<Book> books = [book1, book2, book3];
  for (var book in books){
    print("Title: ${book.getTitle()}");
    print("Author: ${book.getAuthor()}");
    print("Publication Year: ${book.getPublicationYear()}");
    print("Pages Read: ${book.getPagesRead()}");
    print("Book Age: ${book.getBookAge()} years");
  }

  // Print the total number of books created
  print("Total Books Created: ${Book.totalBooks}");
}
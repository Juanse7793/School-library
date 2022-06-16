require './student'
require './teacher'
require './book'
require './rental'
require './person'

class App

    attr_accessor :list_people, :list_books, :rentals

    def initialize
      @list_people = []
      @list_books = []
      @rentals = []
    end

    def create_book
        puts 'Enter the name of the book:'
        name = gets.chomp
        puts 'Enter the author of the book:'
        author = gets.chomp
        puts 'Book created!'
        puts "\n\n"
        book = Book.new(name, author)
        @list_books.push(book)
    end


end

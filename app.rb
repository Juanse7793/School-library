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

    def list_all_books
        puts 'List of all books:'
        puts "\n\n"
        list_books.each do |book|
          puts "Title: #{book.title}, Author: #{book.author}"
        end
        puts "\n\n"
    end

    def create_person # rubocop:disable Metrics/MethodLength
        puts 'Do you want to create a Student (1) or a Teacher (2)?'
        option = gets.chomp.to_i
        case option
        when 1
          puts 'Enter the name of the student:'
          name = gets.chomp
          puts 'Enter the age of the student:'
          age = gets.chomp.to_i
          puts 'Has the student a parent permission? [y/n]'
          parent_permission = gets.chomp.downcase == 'y'
          puts 'Student created!'
          puts "\n\n"
    
          student = Student.new(age, name, parent_permission: parent_permission)
          @list_people.push(student)
        when 2
          puts 'Enter the name of the teacher:'
          name = gets.chomp
          puts 'Enter the age of the teacher:'
          age = gets.chomp.to_i
          puts 'Enter the specialization of the teacher:'
          specialization = gets.chomp
          puts 'Teacher Created!'
          puts "\n\n"
    
          teacher = Teacher.new(age, name, specialization, parent_permission: true)
          @list_people.push(teacher)
        end
    end

    def list_all_people
        puts 'List of all people:'
        puts "\n\n"
        list_people.each do |person|
          puts "[#{person.class}] Name: #{person.name} ID: #{person.id} Age: #{person.age}"
        end
        puts "\n\n"
      end

end

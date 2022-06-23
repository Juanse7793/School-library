require_relative 'spec_helper'

describe Rental do
    before :each do
        @name = 'Pepe'
        @age = 28
        @parent_permission = true
        @student = Student.new(@name, @age, parent_permission: @parent_permission)
        @title = 'The Hobbit'
        @author = 'J.R.R. Tolkien'
        @book = Book.new(@title, @author)
        @date = '01/01/2015'
        @rental = Rental.new(@date, @book, @student)
    end

    context 'Check instance of rental' do
        it 'return an instance of rental' do
            @rental.should be_an_instance_of Rental
        end
    end

    context 'Check rental date' do
        it 'return the rental date ' do
            @rental.date.should eql '01/01/2015'
        end
    end

    context 'Check rental book' do
        it 'return the rental book ' do
            @rental.book.should eql @book
        end
    end

    context 'Check rental person' do
        it 'return the rental person ' do
            @rental.person.should eql @student
        end
    end
end
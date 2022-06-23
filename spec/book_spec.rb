require_relative 'spec_helper'

describe Book do
  before :each do
    @book = Book.new 'title', 'author'
  end

  context 'creating a new instance' do
    it 'return a new Book object' do
      @book.should be_an_instance_of Book
    end
  end

  context 'checking the title' do
    it 'returns the rigth title' do
      @book.title.should eql 'title'
    end
  end

  context 'checking the author' do
    it 'returns the rigth author' do
      @book.author.should eql 'author'
    end
  end
end

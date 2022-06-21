require 'json'
require_relative '../book'

module BooksData
  def load_books
    data = []
    file = './data/books.json'
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |book|
        data << Book.new(book['Title'], book['Author'])
      end
    end
    data
  end

  def save_books
    data = []
    @list_books.each do |book|
      data << { Title: book.title, Author: book.author }
    end
    File.write('./data/books.json', JSON.generate(data))
  end
end

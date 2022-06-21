require 'json'
require_relative '../rental'

module RentalsData
  def get_book(title)
    @list_books.each { |book| return book if book.title == title }
  end

  def get_person(id)
    @list_people.each { |person| return person if person.id == id }
  end

  def load_rentals
    data = []
    file = './data/rentals.json'
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |rental|
        rental = Rental.new(rental['date'], get_book(rental['book']), get_person(rental['person']))
        data << rental
      end
    end
    data
  end

  def save_rentals
    data = []
    @rentals.each do |rental|
      data << { date: rental.date, book: rental.book.title, person: rental.person.id }
    end
    File.write('./data/rentals.json', JSON.generate(data))
  end
end

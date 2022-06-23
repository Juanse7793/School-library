require './rental'

class Book
  attr_accessor :title, :author, :rental

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def rent(rental)
    @rental << rental
  end

  def add_rental(date, person)
    Rental.new(date, self, person)
  end
end

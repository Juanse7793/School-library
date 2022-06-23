require './nameable'
require './decorator'
require './rental'
require './book'
require './corrector'

class Person < Nameable
  attr_accessor :name, :age, :rental, :id, :parent_permission

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @corrector = Corrector.new
    @name = validate_name(name)
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end

  def correct_name?
    @name
  end

  def of_age?
    @age >= 18
  end

  private :of_age?

  def can_use_services?
    of_age? || @parent_permission
  end

  def rent(rental)
    @rental << rental
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  def validate_name(name)
    @corrector.correct_name(name)
  end
end

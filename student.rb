require './main'

class Student < Person
  def initialize(name, age, parent_permission, classroom)
    @classroom = classroom
    super(name, age, parent_permission)
  end

  def play_hooky?
    "¯\(ツ)/¯"
  end
end

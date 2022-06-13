require './main'

class Student < Person
  def initialize(name, age, classroom, parent_permission: true)
    @classroom = classroom
    super(name, age, parent_permission)
  end

  def play_hooky?
    "¯\(ツ)/¯"
  end
end

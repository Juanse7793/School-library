require './person'
require './classroom'

class Student < Person
  def initialize(age, name, classroom = nil, parent_permission: true)
    @classroom = classroom
    super(age, name, parent_permission: parent_permission)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) if classroom.students.include?(self) == false
  end
end

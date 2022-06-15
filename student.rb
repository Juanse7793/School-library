require './person'
require './classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name, classroom = nil , parent_permission: true)
    @classroom = classroom
    super(age, name, parent_permission)
  end

  def play_hooky?
    "¯\(ツ)/¯"
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) if classroom.students.include?(self) == false
  end

end

clase1A = Classroom.new('1A')

juan_sotomayor = Student.new(18, 'Juan Sotomayor')
pepe_perez = Student.new(17, 'Pepe Perez')


# clase1A.add_student(juan_sotomayor)
# clase1A.add_student(pepe_perez)

p clase1A.students.map(&:name)
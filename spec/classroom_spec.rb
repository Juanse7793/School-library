require_relative 'spec_helper'

describe Classroom do
  before :each do
    @label = '6B'
    @classroom = Classroom.new(@label)
  end

  context 'check instance of classroom' do
    it 'return an instance of classroom' do
      @classroom.should be_an_instance_of Classroom
    end
  end

  context 'Check classroom label' do
    it 'return the classroom label ' do
      @classroom.label.should eql '6B'
    end
  end

  context 'Check classroom in students' do
    it 'return the classroom students ' do
      name = 'Juancho'
      age = 27
      parent_permission = true
      student = Student.new(name, age, parent_permission:)
      @classroom.add_student(student)
      @classroom.students.should eql [student]
    end
  end
end

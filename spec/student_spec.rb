require_relative 'spec_helper'

describe Student do
  before :each do
    @name = 'Pepe'
    @age = 28
    @parent_permission = true
    @student = Student.new(@age, @name, parent_permission: @parent_permission)
  end

  context 'Check instance of student' do
    it 'return an instance of student' do
      @student.should be_an_instance_of Student
    end
  end

  context 'Check student name' do
    it 'return the student name ' do
      @student.name.should eql 'Pepe'
    end
  end

  context 'Check student age' do
    it 'return the student age ' do
      @student.age.should eql 28
    end
  end

  context 'Check student parent permission' do
    it 'return the student permission ' do
      expect(@student.can_use_services?).to be true
    end
  end
end

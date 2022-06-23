require_relative 'spec_helper'

describe Person do
  before :each do
    age = 29
    name = 'Person'
    parent_permission = true
    @person = Person.new(age, name, parent_permission: parent_permission)
  end

  context 'Checks to see if a variable is assigned' do
    it 'to an instance of the Person class' do
      @person.should be_an_instance_of Person
    end
  end

  context 'Check person name' do
    it 'return the person name ' do
      @person.name.should eql 'Person'
    end
  end

  context 'Check person age' do
    it 'return the person age ' do
      @person.age.should eql 29
    end
  end

  context 'Check person parent permission' do
    it 'return the person permission ' do
      expect(@person.can_use_services?).to be true
    end
  end
end

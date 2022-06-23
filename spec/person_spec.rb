require_relative 'spec_helper'

describe Person do
  before :each do
    @person = Person.new 'Person', 29, true
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
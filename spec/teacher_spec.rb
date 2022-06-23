require_relative 'spec_helper'

describe Teacher do
  before :each do
    @teacher = Teacher.new 29, 'Teacher', true
  end

  context 'Check teacher name' do
    it 'return the teacher name ' do
      @teacher.name.should eql 'Teacher'
    end
  end

  context 'Check teacher age' do
    it 'return the teacher age ' do
      @teacher.age.should eql 29
    end
  end

  context 'Check teacher parent permission' do
    it 'return the teacher permission ' do
      expect(@teacher.can_use_services?).to be true
    end
  end
end

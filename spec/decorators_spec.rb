require_relative 'spec_helper'

describe BaseDecorator do
    let(:person) { Person.new(22, 'maximilianus') }
    let(:base_decorator) { BaseDecorator.new(person) }
  
    it 'should be a base decorator' do
      expect(base_decorator).to be_a(BaseDecorator)
    end
  
  
    it 'correct_name equals the name of the person' do
      expect(base_decorator.correct_name?).to eq(person.name)
    end
  end
require_relative 'spec_helper'

describe BaseDecorator do
    let(:person) { Person.new('maximilianus', 22) }
    let(:base_decorator) { BaseDecorator.new(person) }
  
    it 'should be a base decorator' do
      expect(base_decorator).to be_a(BaseDecorator)
    end
  

    it 'has a correct_name? method' do
        expect(base_decorator.respond_to?(:correct_name?)).to eq(true)
    end


    it 'correct_name equals the name of the person' do
      expect(base_decorator.correct_name?).to eq(person.name)
    end
  end

describe CapitalizeDecorator do
    let(:person) { Person.new('maximilianus', 22) }
    let(:capitalize_decorator) { CapitalizeDecorator.new(person) }

    it 'should be a capitalize decorator' do
        expect(capitalize_decorator).to be_a(CapitalizeDecorator)
    end

    it 'has a correct_name? method' do
        expect(capitalize_decorator.respond_to?(:correct_name?)).to eq(true)
    end
            
    it 'correct_name equals the name of the person' do
        expect(capitalize_decorator.correct_name?).to eq(person.name.capitalize)
    end
end

describe TrimmerDecorator do
    let(:person) { Person.new('maximilianus', 22) }
    let(:trimmer_decorator) { TrimmerDecorator.new(person) }

    it 'should be a trimmer decorator' do
        expect(trimmer_decorator).to be_a(TrimmerDecorator)
    end

    it 'has a correct_name? method' do
        expect(trimmer_decorator.respond_to?(:correct_name?)).to eq(true)
    end

    it 'correct_name equals the name of the person' do
        expect(trimmer_decorator.correct_name?).to eq(person.name.slice(0, 10))
    end
end
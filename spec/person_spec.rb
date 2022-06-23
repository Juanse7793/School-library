require_relative 'spec_helper'

describe Person do
  context 'testing person' do
    it 'creates new instance of person' do
      person = Person.new(29, 'Ivan')
      expect(person.name).to eq 'Ivan'
    end
  end

  it 'cut name' do
    person = Person.new(29, 'Ivan_Gaona')
    person.validate_name (person.name)
    print person.name.length
    expect(person.name.length).to eq 10
  end  
end

require_relative 'spec_helper'

describe Student do
  context 'testing person' do
    it 'creates new instance of student' do
      person = Student.new(29, 'Ivan')
      expect(person.name).to eq 'Ivan'
    end
  end

  it 'plays hooky' do
    person1 = Student.new(24, 'Juan')
    expect(person1.play_hooky).to eq "¯\(ツ)/¯"
  end
end

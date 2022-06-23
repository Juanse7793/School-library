require_relative 'spec_helper'

describe Book do
  it 'when testing Book' do
    book1 = Book.new('Romeo & Juliet', 'Shakespeare')
    expect(book1.title).to eq 'Romeo & Juliet'
  end

  it 'not be rented' do
    book1 = Book.new('Romeo & Juliet', 'Shakespeare')
    expect(book1.rental.length).to be 0
  end
end

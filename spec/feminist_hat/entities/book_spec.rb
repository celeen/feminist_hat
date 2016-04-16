require 'spec_helper'

describe Book do
  it 'can be initialized with attributes' do
    book = Book.new(title: 'Feminism 101')
    book.title.must_equal('Feminism 101')
  end
end

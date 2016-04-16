require 'features_helper'

describe 'list books' do 
  before do
    BookRepository.clear

    BookRepository.create(Book.new(title: "WOW", author: "bel hooks"))
    BookRepository.create(Book.new(title: "MOM", author: "audre lorde"))
  end
  
  it 'display each book on the page' do
    visit '/books'

    within '#books' do
      assert page.has_css?('.book', count: 2), "Expected to find 2 books"
    end
  end
end
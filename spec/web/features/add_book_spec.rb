require 'features_helper'

describe "Books" do
  after do
    BookRepository.clear
  end

  it 'can create a new book' do
    visit '/books/new'

    within 'form#book-form' do
      fill_in 'Title', with: 'The Second Sex'
      fill_in 'Author', with: 'Simone DeBouvoir'

      click_button 'Create'
    end

    current_path.must_equal('/books')
    assert page.has_content?('New book')
  end

end
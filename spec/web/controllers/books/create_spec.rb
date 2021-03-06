require 'spec_helper'
require_relative '../../../../apps/web/controllers/books/create'

describe Web::Controllers::Books::Create do
  let(:action) { Web::Controllers::Books::Create.new }
  let(:params) { Hash[book: {title: "The Second Sex", author: "Simone DeBouvoir"}] }

  after do
    BookRepository.clear
  end

  it 'creates a new book' do
    action.call(params)
    action.book.id.wont_be_nil
  end

  it 'redirects the user to the books listing' do
    response = action.call(params)

    response[0].must_equal 302
    response[1]['location'].must_equal '/books'
  end

  it "is successful" do
    response = action.call(params)
    response[0].must_equal 200
  end
end

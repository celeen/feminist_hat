require 'spec_helper'
require_relative '../../../../apps/web/controllers/book/new'

describe Web::Controllers::Book::New do
  let(:action) { Web::Controllers::Book::New.new }
  let(:params) { Hash[] }

  it "is successful" do
    response = action.call(params)
    response[0].must_equal 200
  end
end

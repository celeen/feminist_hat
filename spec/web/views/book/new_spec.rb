require 'spec_helper'
require_relative '../../../../apps/web/views/book/new'

describe Web::Views::Book::New do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Lotus::View::Template.new('apps/web/templates/book/new.html.erb') }
  let(:view)      { Web::Views::Book::New.new(template, exposures) }
  let(:rendered)  { view.render }

  it "exposes #foo" do
    view.foo.must_equal exposures.fetch(:foo)
  end
end

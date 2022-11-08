require 'spec_helper'

describe Book do
  before :each do
    @book = Book.new 'The Notebook', 'Nicholas Sparks'
  end

  it 'The created instances equal Book instance' do
    @book.should be_an_instance_of Book
  end

  it 'The created intance should have a title value of' do
    @book.title.should eql 'The Notebook'
  end

  it 'The created intance should have a author value of' do
    @book.author.should eql 'Nicholas Sparks'
  end
end

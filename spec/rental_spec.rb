require 'spec_helper'

describe Rental do
  before :each do
    @rental = Rental.new '2022-11-08', Student.new('Yunus', true, 25), Book.new('The Notebook', 'Nicholas Sparks')
  end

  it 'The created instances equal Rental instance' do
    @rental.should be_an_instance_of Rental
  end

  it 'The created intance should have a date value of' do
    @rental.date.should eql '2022-11-08'
  end
end

require 'spec_helper'

describe Person do
  before :each do
    @person = Person.new 32, 'Ariel Camus'
  end

  it 'The created instances equal Person instance' do
    @person.should be_an_instance_of Person
  end

  it 'The created intance should have a age value of' do
    @person.age.should eql 32
  end

  it 'The created intance should have a name value of' do
    @person.name.should eql 'Ariel Camus'
  end
end

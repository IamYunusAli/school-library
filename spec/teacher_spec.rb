require 'spec_helper'

describe Teacher do
  before :each do
    @teacher = Teacher.new 'Alusine', 'FullStack Developer', 25
  end

  it 'The created instances equal Teacher instance' do
    @teacher.should be_an_instance_of Teacher
  end

  it 'The created intance should have a age value of' do
    @teacher.age.should eql 25
  end

  it 'The created intance should have a name value of' do
    @teacher.name.should eql 'Alusine'
  end

  it 'The created intance should have a specialization value of' do
    @teacher.specialization.should eql 'FullStack Developer'
  end
end

require 'spec_helper'

describe Student do
  before :each do
    @student = Student.new 'Yunus', true, 25
  end

  it 'The created instances equal Student instance' do
    @student.should be_an_instance_of Student
  end

  it 'The created intance should have a age value of' do
    @student.age.should eql 25
  end

  it 'The created intance should have a name value of' do
    @student.name.should eql 'Yunus'
  end

  it 'The created intance should have a parent permission value of' do
    @student.parent_permission.should eql true
  end
end

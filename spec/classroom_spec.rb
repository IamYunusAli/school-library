require 'spec_helper'

describe Classroom do
  before :each do
    @classroom = Classroom.new 'Cohort 11'
  end

  it 'The created instances equal Classroom instance' do
    @classroom.should be_an_instance_of Classroom
  end

  it 'The created intance should have a label value of' do
    @classroom.label.should eql 'Cohort 11'
  end

  it 'The created intance should have an empty array' do
    @classroom.students.should eql nil
  end
end

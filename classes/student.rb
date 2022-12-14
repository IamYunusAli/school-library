require_relative './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name = 'Uknown', parent_permission: true)
    super(name, age, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def add_classroom(classroom)
    @clasroom = clasroom
    clasroom.sttudents.push(self) unless classroom.students.include?(self)
  end
end

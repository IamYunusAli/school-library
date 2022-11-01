require_relative './person'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name = 'Uknown', parent_permission: true)
    super(name, age, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end

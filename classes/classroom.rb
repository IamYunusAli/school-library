class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @sttudents = []
  end

  def add_student(student)
    @students.push(student)
    student.clasroom = self
  end
end

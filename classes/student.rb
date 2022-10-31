class Student < Person
    attr_reader :classroom
    def initialize (name = 'Uknown', age, parent_permission = true, classroom)
        super(name, age, parent_permission)
        @classroom = classroom
    end

    def play_hooky
        "¯\(ツ)/¯"
    end
end
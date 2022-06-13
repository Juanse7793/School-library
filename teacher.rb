require './main'

class Teacher < Person
    def initialize(name, age, specialization)
        @specialization = specialization
        super(name, age)
    end
end
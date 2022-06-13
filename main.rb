class Person
    attr_accessor :name, :age,
    attr_reader :id

    def initialize(name = "unknown", age, parent_permission = true)
        @id = rand(1..100)
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    def is_of_age?
        @age >= 18
     end
 
     private :is_of_age?

    def can_use_services?
        is_of_age? || @parent_permission ? true : false
    end
end

require './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, name, specialization, parent_permission: true)
    @specialization = specialization
    super(age, name, parent_permission:)
  end

  def can_use_services?
    true
  end
end

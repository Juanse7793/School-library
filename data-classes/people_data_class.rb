require 'json'
require_relative '../student'
require_relative '../teacher'

module PeopleData
  def load_people
    data = []
    file = './data/people.json'
    if File.exist?(file) && File.read(file) != ''
      JSON.parse(File.read(file)).each do |person|
        if person['class'] == 'Student'
          student = Student.new(person['age'], person['name'], person['classroom'],
                                parent_permission: person['parent_permission'])
          student.id = person['id']
          data << student
        end
        next unless person['class'] == 'Teacher'

        teacher = Teacher.new(person['age'], person['name'], person['specialization'],
                              parent_permission: person['parent_permission'])
        teacher.id = person['id']
        data << teacher
      end
    end
    data
  end

  def save_people
    data = []
    @list_people.each do |person|
      if person.instance_of?(Teacher)
        data.push({ id: person.id, name: person.name, age: person.age, parent_permission: person.parent_permission,
                    class: person.class, specialization: person.specialization })
      end
      if person.instance_of?(Student)
        data.push({ id: person.id, name: person.name, age: person.age, parent_permission: person.parent_permission,
                    class: person.class })
      end
    end
    File.write('./data/people.json', JSON.generate(data))
  end
end

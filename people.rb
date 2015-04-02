class Person
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi, my name is #{@name}"
  end
end

class Student < Person

  def learn
    puts "I get it!"
  end

end

class Instructor < Person

  def teach
    puts "Everything in Ruby is an object!"
  end

end

new_instructor = Instructor.new("Chris")

new_instructor.greeting

new_student = Student.new("Christina")

new_student.greeting



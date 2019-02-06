require_relative('../models/student.rb')
require ('pry')

Student.delete_all()

student_1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 15
  })

student_2 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Granger",
  "house" => "Gryffindor",
  "age" => 14
  })
student_1.save
student_2.save


binding.pry
nil

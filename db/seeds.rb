require_relative('../models/student.rb')
require_relative('../models/house.rb')
require ('pry')

Student.delete_all()
house_1 = House.new({
  "name" => "Gryffindor"})
house_1.save

student_1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_name" => "Gryffindor",
  "age" => 15
  })

student_2 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Granger",
  "house_name" => "Gryffindor",
  "age" => 14
  })
student_1.save
student_2.save


binding.pry
nil

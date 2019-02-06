require_relative('../models/student.rb')
require_relative('../models/house.rb')
require ('pry')

house_1 = House.new({"name" => "Gryffindor"})
house_2 = House.new({"name" => "Ravenclaw"})
house_3 = House.new({"name" => "Hufflepuff"})
house_4 = House.new({"name" => "Slytherin"})
house_1.save
house_2.save
house_3.save
house_4.save

student_1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => house_1.id,
  "age" => 15
  })

student_2 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Granger",
  "house_id" => house_2.id,
  "age" => 14
  })
student_1.save
student_2.save


binding.pry
nil

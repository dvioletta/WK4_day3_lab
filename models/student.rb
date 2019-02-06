require_relative ('../db/sql_runner')


class Student

  attr_reader :id
  attr_accessor :first_name, :last_name, :house_id, :age

  def initialize(details)
    @id = details["id"].to_i if details["id"]
    @first_name = details["first_name"]
    @last_name = details["last_name"]
    @house_id = details["house_id"].to_i
    @age = details["age"].to_i
  end

  def save
    sql = "INSERT INTO student(first_name, last_name, house_id, age)
    VALUES($1, $2, $3, $4)

    RETURNING id;"
    values = [@first_name, @last_name, @house_id, @age]
    result = SqlRunner.run(sql, values)
    @id = result.first()['id'].to_i
  end

  def self.find_all
    sql = "SELECT * FROM student"
    result = SqlRunner.run(sql)
    return result.map { |student| Student.new(student) }
  end

  def self.find(id)
    sql = "SELECT * FROM student
    WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)
    return result.map {|student| Student.new(student)}
  end

  def pretty_print()
    return "#{@first_name} #{@last_name}"
  end

  def self.delete_all
    sql = "DELETE FROM student"
    SqlRunner.run(sql)
  end

  def house()
    sql = "SELECT * FROM house
    WHERE id = $1"
    values = [@house_id]
    house = SqlRunner.run(sql, values)
    result= House.new(house.first)
    return result
  end

end

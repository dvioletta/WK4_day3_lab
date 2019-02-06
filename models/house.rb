require_relative('../db/sql_runner.rb')


class House

  attr_reader :id
  attr_accessor :name


  def initialize(details)
    @id = details["id"].to_i if details["id"]
    @name = details["name"]
  end

  def save
    sql = "INSERT INTO house(name)
    VALUES($1)

    RETURNING id;"
    values = [@name]
    result = SqlRunner.run(sql, values)
    @id = result.first()['id'].to_i
  end

  def self.find_all
    sql = "SELECT * FROM house"
    result = SqlRunner.run(sql)
    return result.map { |house| House.new(house) }
  end

  def self.find(id)
    sql = "SELECT * FROM house
    WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)
    return result.map {|house| House.new(house)}
  end



  def self.delete_all
    sql = "DELETE FROM house"
    SqlRunner.run(sql)
  end

end

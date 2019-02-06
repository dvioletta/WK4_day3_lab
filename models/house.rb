require_relative('../db/sql_runner.rb')

class House
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
end

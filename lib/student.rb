require_relative "../config/environment.rb"

class Student
  attr_accessor :name, :grade
  attr_reader :id

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
    @id = id
  end

  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
          name TEXT,
          grade INTEGER
      )
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
  end
end

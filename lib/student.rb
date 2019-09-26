class Student
  attr_accessor :name , :grade
  attr_reader :id
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  def self.create_table
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY, 
        name TEXT,
        grade INTEGER)
        SQL
    DB[:conn].execute(sql) 
  end
  
  def self.drop_table
    
  end 
  
  def save
    
  end 
  
  def self.create 
    
  end 
end

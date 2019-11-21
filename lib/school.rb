require 'pry'
class School
  attr_accessor :author, :page_count
  attr_reader :school_name, :student, :grade, :roster

  @@all = []
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
    
    @@all.push(self)
  end
  
  def self.all
    @@all
  end

  def add_student(student, grade)
    
    @roster[grade] = [] if !@roster.has_key?(grade)
    @roster[grade].push(student)
  end
  
  def grade(grade)
    @roster[grade]
  end
  def sort 
    
    #   @roster.each do |grade|
    #     grade.sort
    # end
    self.sort
  end
  
  
end
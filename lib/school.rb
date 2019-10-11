# code here!
class School
  attr_accessor :roster

  def initialize(name)
  @roster = {} 
  @name = name
  end 
 
  def add_student(name, grade)
    if @roster.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    result = {}
    Hash[roster.sort_by{|k,v| k}].map do |k,v|
      result[k] = v.sort
    end
    result
  end 
  
end 
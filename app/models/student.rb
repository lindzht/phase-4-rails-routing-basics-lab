class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.list_grades
    self.all.order(grade: :desc)
  end

  def self.highest_grade
    self.list_grades.first 
  end

end

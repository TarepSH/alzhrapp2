class Attending < ApplicationRecord
  before_save :adding_point

  has_and_belongs_to_many :students

  def adding_point
    a = Student.find(self.student_ids)
    a.each do |aa|
      attendingspoint = aa.attendings.count * 25
      aa.update(:attendings_point =>  attendingspoint) 
      aa.update(:toltal_point => (aa.attendings_point.to_i + aa.memorizations_point.to_i))
    end
  end
end

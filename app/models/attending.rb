class Attending < ApplicationRecord
  #after_update :adding_point
  #after_save :adding_point
  
  #has_many :studnet_attendings
  has_and_belongs_to_many :students
  #validates :name, :presence => true, :uniqueness => true

  def adding_point
    a = Student.find(self.student_ids)
    a.each do |aa|
      attendingspoint = aa.attendings.count * 20
      aa.update(:attendings_point =>  attendingspoint, :toltal_point => (aa.attendings_point.to_i + aa.memorizations_point.to_i) )
    end
  end
end

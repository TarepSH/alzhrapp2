class Attending < ApplicationRecord
  after_update :adding
  after_save :adding
  
  #has_many :studnet_attendings
  has_and_belongs_to_many :students
  #validates :name, :presence => true, :uniqueness => true

  def adding
    a = Student.find(self.student_ids)
    a.each do |aa|
      point = aa.attendings.count
      aa.update(:line_phone =>  point * 20)
    end
  end
end

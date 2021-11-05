class Student < ApplicationRecord
  #after_save :adding_point2
  
  belongs_to :studentclass, optional: true
  
  has_and_belongs_to_many :attendings
  has_and_belongs_to_many :memorizations

  def name_with_initial
    "#{first_name} #{last_name}"
  end

 # def adding_point
   # a = Student.find(self.id)

    #Array(a.each) do |aa|
     # memorizationspoint = aa.memorizations.count * 2
     # aa.update(:memorizations_point =>  attendingspoint, :toltal_point => (aa.attendings_point.to_i + aa.memorizations_point.to_i) )
   # end

    #a = Student.find(self.id)
   # memorizationspoint = (a.memorizations.count.to_i * 2)
   # a.update(:memorizations_point =>  memorizationspoint.to_i, :toltal_point => a.memorizations_point.to_i + a.attendings_point.to_i)
  #end

end

class Memorization < ApplicationRecord
    #has_many :studnet_memorizations
    #has_many :students, through: :studnet_memorizations
  
    has_and_belongs_to_many :students

end

class Attending < ApplicationRecord
  has_many :studnet_attendings
  has_many :students, through: :studnet_attendings

end

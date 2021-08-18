class Student < ApplicationRecord
  belongs_to :studentclass, optional: true
  has_many :studnet_attendings
  has_many :attendings, through: :studnet_attendings

  has_many :studnet_memorizations
  has_many :memorizations, through: :studnet_memorizations

end

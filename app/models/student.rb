class Student < ApplicationRecord
  belongs_to :studentclass, optional: true
  #has_many :studnet_attendings
  #has_many :attendings, through: :studnet_attendings

  #has_many :studnet_memorizations
  #as_many :memorizations, through: :studnet_memorizations

  has_and_belongs_to_many :attendings, dependent: :destroy
  has_and_belongs_to_many :memorizations, dependent: :destroy

end

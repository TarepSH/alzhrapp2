class Student < ApplicationRecord
  belongs_to :studentclass, optional: true
  has_many :attendings
end

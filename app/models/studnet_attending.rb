class StudnetAttending < ApplicationRecord
  has_many :students
  belongs_to :attending
end

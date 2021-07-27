class StudnetAttending < ApplicationRecord
  belongs_to :student
  belongs_to :attending
end

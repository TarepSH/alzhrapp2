class MemorizationsStudent < ApplicationRecord
  belongs_to :memorization
  belongs_to :student
end

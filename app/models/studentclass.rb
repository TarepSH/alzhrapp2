class Studentclass < ApplicationRecord
  has_many :students
  belongs_to :teacher
end

class Student < ApplicationRecord
  belongs_to :studentclass, optional: true
end

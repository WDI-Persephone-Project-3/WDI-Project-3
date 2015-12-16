class Student < ActiveRecord::Base
  has_secure_password
  has_many :responses
  belongs_to :cohort
end
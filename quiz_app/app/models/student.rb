# == Schema Information
#
# Table name: students
#
#  id              :integer          not null, primary key
#  last_name       :string
#  first_name      :string
#  email           :string
#  password_digest :string
#  cohort_id       :integer
#

class Student < ActiveRecord::Base
  has_secure_password
  has_many :responses
  belongs_to :cohort
  # belongs_to :instructor, through: :cohort
end

# == Schema Information
#
# Table name: instructors
#
#  id              :integer          not null, primary key
#  last_name       :string
#  first_name      :string
#  email           :string
#  password_digest :string
#

class Instructor < ActiveRecord::Base
  has_secure_password
  has_many :quizzes
  has_many :cohorts
  has_many :students, through: :cohorts
end

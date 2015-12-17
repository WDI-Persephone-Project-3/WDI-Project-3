# == Schema Information
#
# Table name: cohorts
#
#  id            :integer          not null, primary key
#  name          :string
#  instructor_id :integer
#

class Cohort < ActiveRecord::Base
  belongs_to :instructor
  has_many :students
end

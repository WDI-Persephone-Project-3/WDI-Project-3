# == Schema Information
#
# Table name: quizzes
#
#  id            :integer          not null, primary key
#  test_day      :date
#  instructor_id :integer
#

class Quiz < ActiveRecord::Base
  belongs_to :instructor
  has_many :responses
  has_and_belongs_to_many :questions

end

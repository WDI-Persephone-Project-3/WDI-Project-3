# == Schema Information
#
# Table name: responses
#
#  id          :integer          not null, primary key
#  choice      :string
#  student_id  :integer
#  quiz_id     :integer
#  question_id :integer
#

class Response < ActiveRecord::Base
  belongs_to :student
  belongs_to :quiz
  belongs_to :question
end

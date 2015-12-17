# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  choice      :string
#  question_id :integer
#  is_correct  :boolean
#

class Answer < ActiveRecord::Base
  belongs_to :question
end

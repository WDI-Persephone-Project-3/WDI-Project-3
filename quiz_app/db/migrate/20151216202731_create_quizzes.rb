class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.datetime :test_day
      t.references :instructor
    end
  end
end

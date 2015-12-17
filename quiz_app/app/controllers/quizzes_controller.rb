class QuizzesController < ApplicationController

  # GET '/quizzes'
  def index
    @quizzes = Quiz.all
  end

  # GET '/quizzes/new'
  def new
    @quiz = Quiz.new
  end

  # POST '/quizzes'
  def create
    @
  end


end

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
    @quiz = Quiz.new(test_day: params[:test_day], user: current_user)
    if @quiz.save
      redirect_to '/quizzes'
    else
      render :new
    end
  end

  # GET '/quizzes/1'
  def show
    @quiz = Quiz.find(params[:id])
  end


end

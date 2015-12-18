class InstructorsController < ApplicationController

  def dash
    @instructor = Instructor.find(session[:user_id])
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def edit  
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])
    @instructor.update(instructor_params)
    redirect_to "/"
  end

  def new
  end

  private 

  def instructor_params
    params.require(:instructor).permit(:last_name, :first_name, :email_address)
  end

end

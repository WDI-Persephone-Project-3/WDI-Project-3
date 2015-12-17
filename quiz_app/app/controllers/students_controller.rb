class StudentsController < ApplicationController

  def show
  	@student = Student.find(params[:id])
  end

  def edit
  	render :edit 
  end

  def update
  	@student = Student.find(params[:id])
  	@student.update(student_params)
  end
  
  private 

  def student_params
  	params.require(:student).permit(:email, :password, :password_confirmation)
  end

end

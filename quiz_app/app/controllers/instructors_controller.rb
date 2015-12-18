class InstructorsController < ApplicationController

  def dash
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def edit
    render :edit 
  end

  def update
    @instructor = Instructor.find(params[:id])
    @instructor.update(instructor_params)
  end
  
  def cohort
    {name: "Name", test: "Test"}
  end

  private 

  def instructor_params
  end

end

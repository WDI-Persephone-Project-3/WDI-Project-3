class CohortsController < ApplicationController
	
	def show
		#this will come from sessions
		@cohort = Instructor.params[:id].cohorts

	end

	def new 
	end

	def edit
	end

	def create
	end

	def destroy
	end

	def update
	end 

end

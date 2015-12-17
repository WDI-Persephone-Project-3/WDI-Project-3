class SessionsController < ApplicationController

	def new
	end
	
  def create

  end

  def destroy
    session[:user_id] = nil
    session[:user_class] = nil
    redirect_to '/'
  end

end

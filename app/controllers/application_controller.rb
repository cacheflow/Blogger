class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user 
  #if it someone is logged in then find them by their session id 
  def current_user 
  	if session[:author_id]
  		Author.find_by(id: session[:author_id])
  	end 

  end 


end

class AuthsController < ApplicationController
	def new  
		if current_user 
			redirect_to articles_path 
		else 
			@author = Author.new 

		end 
 	end 

	def create 
		#if they're authenticated, then create a session equal to the id of 
		#that particular author in the database  
		author = Author.find_by(email: params[:author][:email])
		if author.authenticated?(params[:author][:password])
			session[:author_id]=author.id 
			redirect_to articles_path
		else 
			render action: "new"

		end 
	end 


	def destroy 
		session[:author_id] = nil
		redirect_to new_auth_path



	end 	









end

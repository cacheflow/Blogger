class AuthorsController < ApplicationController
	def index 
		@authors = Author.all 
	end 

	def new 
		@author = Author.new
		
	end 


	def create 
		@author = Author.new(params.require(:author).permit(:email, :password))
		if @author.save
				redirect_to articles_path 
		else 
			render action: "index"
		end 



	end 

	def show 
		@author = Author.find(params[:id])
	end 









end

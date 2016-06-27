class PerniagaansController < ApplicationController

	def index
		@perniagaan = Perniagaan.all
	end
	
	def show
		@perniagaan = Perniagaan.find(params[:id])
	end
	
	def new
		@perniagaan = Perniagaan.new
	end

	def create
		@perniagaan = Perniagaan.new(perniagaan_params)
		if @perniagaan.save
  			redirect_to root_path
  		else
  			render 'new'
  		end
	end
	

	private
	def perniagaan_params
		params.require(:perniagaan).permit(:name)
	end

end

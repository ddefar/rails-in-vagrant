class MuseumsController < ApplicationController
	
	def index
		@museums = Museum.all
	end

	def show
  		@museum = Museum.find(params[:id])
  	end

  	def new
  		@museum = Museum.new
  	end

  	def edit
  		@museum = Museum.find(params[:id])
  	end

  	def update
  		@museum = Museum.find(params[:id])
 
	  	if @museum.update(museum_params)
	    	redirect_to @museum
	  	else
	    	render 'edit'
	  	end
	end

  	def create
  		@museum = Museum.new(museum_params)
 
  		if @museum.save
  			redirect_to @museum
  		else 
  			render 'new'
  		end
  	end

  	def destroy
  		@museum = Museum.find(params[:id])
  		@museum.destroy
 
  		redirect_to museums_path
	end

  	private
	  def museum_params
	    params.require(:museum).permit(:name, :about)
	  end
end

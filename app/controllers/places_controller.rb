class PlacesController < ApplicationController
	def index
		@place = Place.last
	end

	def new

		@place = Place.new

	end	

	def create
		@place = Place.create( place_params )
		redirect_to root_path #this directs the input to the correct place
					# You can find the correct location through the command rake routes in the terminal window
	end	

	private

	def place_params
		params.require(:place).permit( :title, :address)

	end
end

class PlacesController < ApplicationController

	def index
		@place = Place.last
	end


	def new
		@place = Place.new
	end


	def create
		# Place.create( :title => 'omg', ...)
		@place = Place.create( place_params )
		redirect_to root_path
	end

	private

	def place_params
		params.require(:place).permit( :title, :address )
	end



end

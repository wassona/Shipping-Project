class HomeController < ApplicationController
	def index
		@boat = Boat.new
		@location = Location.new
		@job = Job.new
	end



	private
		def boat_params
  			params.require(:boat).permit(:name,:containers,:location)
		end
end
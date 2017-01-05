class BoatsController < ApplicationController

	def create
		@boat = Boat.new(boat_params)
		if @boat.save
			redirect_to :back, notice: "Wooh! Boat is afloat!"
		else
			render "home/index", alert: "Boat problem!"
		end
	end

	private
		def boat_params
  			params.require(:boat).permit(:name,:containers,:location,:location_id, :user_id)
		end

end
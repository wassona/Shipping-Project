class LocationsController < ApplicationController

	def create
		@location = Location.new(name: params[:location][:name])
		if @location.save
			redirect_to :back, notice: "Wooh! Location is afloat!"
		else
			render "home/index", alert: "Location problem!"
		end
	end
end

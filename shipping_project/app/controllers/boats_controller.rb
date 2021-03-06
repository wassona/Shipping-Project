class BoatsController < ApplicationController

	def create
		@boat = Boat.new(boat_params)
		if @boat.save
			redirect_to :back, notice: "Wooh! Boat is afloat!"
		else
			render "home/index", alert: "Boat problem!"
		end
	end

	def remove_job
		@boat = Boat.find params[:boat]
		@job = Job.find params[:job_id]

		@boat.jobs.delete @job
	end



	private
		def boat_params
  			params.require(:boat).permit(:name,:containers,:location,:location_id, :user_id, :avatar)
		end



end
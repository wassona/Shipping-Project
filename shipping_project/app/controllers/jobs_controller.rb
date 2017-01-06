class JobsController < ApplicationController

	def index
	end

	def create
		@job = Job.new(job_params)
		if @job.save
			redirect_to :back, notice: "Wooh! Job is afloat!"
		else
			render "home/index", alert: "Job problem!"
		end
	end

	def update
		@job = Job.find params[:job][:id]


		if @job.update(job_params)
			redirect_to :back, notice: "Job updated"
		else
			render "home/index", alert: "Update failed"
		end
	end

	def add_boat
		@job = Job.find params[:job_id]
		@boat = Boat.find params[:job][:boats]

		@job.boats.append @boat

		render partial: @boat, locals: { job_id: params[:job_id]}
	end

	private

		def job_params
  			params.require(:job).permit(:description,:cost,:containers_needed,:origin_id, :destination_id, :user_id, :boats)
  		end
end
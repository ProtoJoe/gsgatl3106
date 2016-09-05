class ScoutsController < ApplicationController
	def index
		@scouts = Scout.all
	end

	def create
		@scout = Scout.create(scout_params)
		redirect_to @scout
	end

	def new
		@scout = Scout.new
	end

	def show
		@scout = Scout.find(params[:id])
	end

	def edit
	end

	private

	def scout_params
		params.require(:scout).permit(:last_name, :first_name, :start_date)
	end
end

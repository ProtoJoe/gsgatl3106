class ScoutsController < ApplicationController
	before_action :set_scout, only: [:edit, :show, :update, :destroy]
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
	end

	def edit
	end

	def update
	    @scout.update(scout_params)
    	redirect_to edit_scout_path(@scout)
	end

	def destroy
		@scout.destroy!
		redirect_to scouts_path
	end

	private

	def set_scout
		@scout = Scout.find(params[:id])
	end

	def scout_params
		params.require(:scout).permit(:last_name, :first_name, :scout_level, :start_date)
	end
end

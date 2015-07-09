class ProfilesController < ApplicationController

	def new
		@profile = Profile.new
	end

	def show
		@profile = Profile.find(params[:id])
	end


	def edit
		@profile = Profile.find(params[:id])
	end

	def create
		@profile = Profile.new(profile_params)
		@profile.user = current_user

		if @profile.save
			redirect_to @profile
		else
			render 'new'
		end
	end

	private

	def profile_params
		params.require(:profile).permit(:name, :photo, :description, :base, :education, :interests)
	end
end
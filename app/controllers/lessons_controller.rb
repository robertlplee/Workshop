class LessonsController < ApplicationController
	
	before_action :authenticate_user!

	def index
		@lessons = Lesson.all
	end

	def show
		@lesson = Lesson.find(params[:id])
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private 
	def photo_params
	end


end
class LessonsController < ApplicationController
	
	before_action :authenticate_user!
	# before_action :authorize_admin!, only: [:]
	
	# def authorize_admin!
	# =>unless current_user.admin?
	# =>	redirect_to :root, alert: "you cant do that!"
	# # => end
	# # def authorize_editor_or_admin?
	# 	if current_user.admin || current_user.ediotr?
	
			


	def index
		@lessons = Lesson.all
	end

	def show
		@lesson = Lesson.find(params[:id])
		@comment = @lesson.comments.build
		@all_comments = @lesson.comments.reject(&:new_record?)
	end

	def new
		# unless current_user.admin?
			#redirect_to :root, alert: "You cant do that!"
		#else
		@lesson = Lesson.new
	end

	def create
		@lesson = current_user.lessons.build(lesson_params)
		@lesson.host = current_user

		if @lesson.save
			redirect_to @lesson
		else
			render "new"
		end
	end

	def edit
		@lesson = Lesson.find(params[:id])
		unless current_user == @lesson.host
			redirect_to :root, alert: "Only the host can edit the workshop information"
		end
	end

	def update
		@lesson = Lesson.find(params[:id])

		if @lesson.update(lesson_params)
		redirect_to @lesson 
		else
		render 'edit'
		end
	end

	def destroy
		@lesson = Lesson.find(params[:id])
		unless current_user == @lesson.host
			redirect_to :root, alert: "Only the host can edit the workshop information"
		end
		@lesson.destroy
		redirect_to @lesson
	end

	private 
	def lesson_params
		params.require(:lesson).permit(:StartTime, :EndTIme, :location,
		:category, :name, :price, :capacity, :description, :language, :user_id)
	end

	def has_permission(lesson)
		current_user == lesson.host 
	end

end
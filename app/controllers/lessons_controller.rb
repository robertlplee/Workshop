class LessonsController < ApplicationController
	

	# before_action :authenticate_user!
	# before_action :authorize_admin!, only: [:new, :destroy]

	# before_action :authorize_admin!, only: [:new, :create, :destroy]
	# before_action :authorize_editor_or_admin!, only: [:edit, :update]

	def index
		@lessons = Lesson.all
		@geojson = Array.new

		@lessons.each do |lesson|
			@geojson << {
				type: 'Feature',
				geometry:{
					type: 'Point',
					coordinates: [lesson.longitude, lesson.latitude]
					},
					properties: {
						name: lesson.name,
						address: lesson.address,
						:'marker-color' => '#00607d',
						:'marker-symbol' => 'circle',
						:'marker-size' => 'medium'
					}
				}
			end
			respond_to do |format|
				format.html
				format.json { render json: @geojson } 
			end
		end

		def search
			@lessons = Lesson.search(params[:q])
			render :index
		end

		def show
			@lesson = Lesson.find(params[:id])
			@comment = @lesson.comments.build
			@all_comments = @lesson.comments.reject(&:new_record?)
			@profile = current_user.profile
			
		end

		def new
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

		def add_student
			@lesson = Lesson.find(params[:id])
			@lesson.users << current_user
			redirect_to @lesson
		end

		def roster
			@lesson = Lesson.find(params[:id])
		end

		private 
		def lesson_params
			params.require(:lesson).permit(:StartTime, :EndTIme, :address,
				:category, :name, :price, :capacity, :description, :language, :user_id)
		end

		def has_permission(lesson)
			current_user == lesson.host 
		end

		def authorize_admin!
			unless current_user.admin?
				redirect_to :root, alert: "You can't do that!"
			end
		end
		
		def authorize_editor_or_admin!
			if current_user.admin? || current_user.editor?
			else
				redirect_to :root, alert: "You can't do that!"
			end
		end


	end
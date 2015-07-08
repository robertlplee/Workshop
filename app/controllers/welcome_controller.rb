class WelcomeController < ApplicationController
	def index
		random_lesson_ids = (1...Lesson.count).to_a.shuffle.take(4)
		@featured_lessons = []
		random_lesson_ids.each do |id|
			@featured_lessons << Lesson.find(id)
		end
	end
end
class CommentsController < ApplicationController
    def create
        @lesson = Lesson.find(params[lesson_id])
        @comment = @lesson.comments.create(comment_params)
        redirect_to lesson_path(@lesson)
    end
    
    private
    def comment_params
        params.require(:commenter, :body, :timestamp)
    end
end

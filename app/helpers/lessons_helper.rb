module LessonsHelper
    def has_permission(lesson)
        current_user == lesson.host || current_user.status == admin
    end
end
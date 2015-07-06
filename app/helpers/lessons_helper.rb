module LessonsHelper
    def has_permission(lesson)
        current_user == lesson.host || current_user.role == admin
    end
end
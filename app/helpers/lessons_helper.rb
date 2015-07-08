module LessonsHelper
    def has_permission(lesson)
        current_user == lesson.host || current_user.role == admin
    end

    def can_create_animal?
    	user_signed_in? && current_user.admin?
    end
    def can_edit_animal?
    	user_signed_in? && (current_user.admin? || 
    		current_user.admin?)
    end
    def can_destroy_animal?
    	user_signed_in? && current_user.admin?
    end
end
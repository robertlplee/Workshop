class Lesson < ActiveRecord::Base
	has_many :students, class_name: "User", foreign_key: 'user_id '
	
	belongs_to :host, class_name: "User"
	has_many :comments
end
 
class Lesson < ActiveRecord::Base
	has_many :students, class_name: "User", foreign_key: 'user_id'
	
	belongs_to :host, class_name: "User"
	has_many :comments
	has_and_belongs_to_many :users

	def self.search(query)
  		where("name LIKE ? or category LIKE ? or location LIKE ?", "%#{query}%", "%#{query}%", "%#{query}%") 
	end
end
 
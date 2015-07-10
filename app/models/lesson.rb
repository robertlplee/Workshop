class Lesson < ActiveRecord::Base
	
	geocoded_by :address
	after_validation :geocode
	has_many :students, class_name: "User", foreign_key: 'user_id'
	
	belongs_to :host, class_name: "User"
	has_many :comments
	has_and_belongs_to_many :users


	def self.search(query)
  		where("name ILIKE ? or category ILIKE ? or address ILIKE ?", "%#{query}%", "%#{query}%", "%#{query}%") 
	end


end
 
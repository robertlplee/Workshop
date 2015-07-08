class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :lessons
  
  
  # :role
  # user == 0
  # admin == 1
  # rails generate migration AddRoleToUser Role:integer 
  # Rake db:migrate
  enum role: [:user, :admin, :editor]
  # user.update role: 1
end

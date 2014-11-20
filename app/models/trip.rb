class Trip < ActiveRecord::Base
	belongs_to :route
	belongs_to :user_created, class_name: 'User'
	has_many :trackpoints
	belongs_to :vehicle
end

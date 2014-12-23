class Trip < ActiveRecord::Base
	belongs_to :route
	belongs_to :user_created, class_name: 'User'
	has_many :tracks
	has_many :shared_infos
	belongs_to :vehicle

	def self.search_open_routes(search)
  		joins(:route,:tracks).where("routes.label LIKE ? and end_time_at is null", "%#{search}%")
	end

	def self.find_open(vehicle)
		where("vehicle_id = ? and end_time_at is null",vehicle).order('created_at DESC').limit(1).first
	end

	def last_comment
		SharedInfo.joins(:trip).where(:trips => {id:id}).order('created_at DESC').limit(1).first
	end
	def end
		end_time_at = Time.now
		save!
	end
end

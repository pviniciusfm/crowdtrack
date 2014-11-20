class Track < ActiveRecord::Base
  belongs_to :trip
  def self.search_route(search)
  		Track.joins(:trip => :route).where("routes.label LIKE ?", "%#{search}%")
	end
end

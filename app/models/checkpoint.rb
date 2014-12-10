class Checkpoint < ActiveRecord::Base
	include RankedModel
	belongs_to :route
	validates :label, presence: true
	validates :latitude, presence: true
	validates :longitude, presence: true
	validates :row_order, presence: true
  	ranks :row_order
end

class Checkpoint < ActiveRecord::Base
	has_many :routes, through: RouteCheckpoints
end

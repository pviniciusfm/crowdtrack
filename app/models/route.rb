class Route < ActiveRecord::Base
	belongs_to :company
	has_many :checkpoints, through: RouteCheckpoints
	has_one :checkpoint, as: :initial_checkpoint
	has_one :checkpoint, as: :final_checkpoint
end

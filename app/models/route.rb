class Route < ActiveRecord::Base
	belongs_to :company
	has_many :checkpoints

	accepts_nested_attributes_for :checkpoints,
		allow_destroy: true, reject_if: :all_blank

	def initial_checkpoint
		Checkpoint.where(route_id: id).order(row_order: :asc).limit(1).first
	end

	def final_checkpoint
		Checkpoint.where(route_id: id).order(row_order: :desc).limit(1).first
	end
end

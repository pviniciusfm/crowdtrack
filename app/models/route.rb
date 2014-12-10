class Route < ActiveRecord::Base
	belongs_to :company
	has_many :checkpoints
	has_one :initial_checkpoint, :foreign_key => 'route_id', :class_name => "Checkpoint"
	has_one :final_checkpoint, :foreign_key => 'route_id', :class_name => "Checkpoint"
	accepts_nested_attributes_for :checkpoints,
		allow_destroy: true, reject_if: :all_blank
end

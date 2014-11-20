class RouteCheckpoints < ActiveRecord::Base
  belongs_to :routes
  belongs_to :checkpoints
  include RankedModel
  ranks :row_order
end

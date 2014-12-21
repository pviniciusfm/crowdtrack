class SharedInfo < ActiveRecord::Base
  belongs_to :trip
  belongs_to :user

  serialize :capacity_rank, Survey::CapacityRank
  serialize :traffic_rank, Survey::TrafficRank
  validates :capacity_rank,       inclusion: { in: Survey::CapacityRank.values }
  validates :traffic_rank, inclusion: { in: Survey::TrafficRank.values }

end
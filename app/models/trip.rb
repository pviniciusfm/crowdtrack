class Trip < ActiveRecord::Base
  belongs_to :route
  belongs_to :user_created
  has_many :tracks
  has_one :vehicle
end

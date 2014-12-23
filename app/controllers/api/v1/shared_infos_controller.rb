
class Api::V1::SharedInfosController < ApplicationController
  # http_basic_authenticate_with :name => "admin", :password => "1234"
  protect_from_forgery with: :null_session
  skip_before_filter :authenticate_user! # we don't need devise authentication here
  respond_to :json
  #before_filter :fetch_user

  def share
  	user = User.new
  	user.id = params[:user]
    share = SharedInfo.new
    share.trip = Trip.find_open(params[:vehicle])
    share.user = user
    share.traffic_rank = params[:trafficRank]
    share.capacity_rank = params[:capacityRank]
    share.comments = params[:comments]
    share.save!
    render json: {:status => 'created'}
  end
end

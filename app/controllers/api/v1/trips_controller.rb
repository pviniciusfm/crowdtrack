
class Api::V1::TripsController < ApplicationController
	http_basic_authenticate_with :name => "admin", :password => "1234"
	protect_from_forgery with: :null_session
	skip_before_filter :authenticate_user! # we don't need devise authentication here
	respond_to :json
	before_action :set_trip, only: [:end, :update]
	#before_filter :fetch_user

	def start
		@trip = Trip.new(trip_params)
		@trip.save!
	end

	def end
		@trip.end_time_at = Time.now
		@trip.save!
	end

	def vehicles
		respond_with Vehicle.all
	end

	def routes
		respond_with Route.all
	end

	# PATCH/PUT /trips/1
	def update
		track = Track.new(track_params)
		track.trip = @trip
		track.save!
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_trip
		@trip = Trip.find(params[:id])
	end

	# Only allow a trusted parameter "white list" through.
	def trip_params
		params.require(:trip).permit(:vehicle, :route, :latitude, :longitude, :accuracy)
	end
	def track_params
      params.require(:track).permit(:trip_id, :latitude, :longitude, :accuracy)
  	end
end

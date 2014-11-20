class Api::V1::AuthenticationController < ApplicationController
	def authenticate
		email = params[:email]
		password = params[:password]
	end
end
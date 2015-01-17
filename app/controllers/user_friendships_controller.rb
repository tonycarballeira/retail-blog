class UserFriendshipsController < ApplicationController
	before_action :authenticate_user!, only: [:new]
	def new
		unless params[:friend_id]
			flash[:error] = "Friend Required"
	end
end

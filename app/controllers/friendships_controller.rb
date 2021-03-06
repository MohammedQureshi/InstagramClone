class FriendshipsController < ApplicationController
    before_action :find_user
    def create 
        current_user.follow(@user)
        redirect_to request.referrer
    end 
    def destroy
        current_user.unfollow(@user)
        redirect_to request.referrer
    end 
    private
    def find_user
        @user = User.find_by(username: params[:user_id])
    end 
end 
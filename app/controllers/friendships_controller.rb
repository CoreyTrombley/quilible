class FriendshipsController < ApplicationController
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if current_user.id != @friendship.friend_id
      if @friendship.save
        flash[:notice] = "Added #{User.find(params[:friend_id]).user_name}."
        redirect_to :back
      else
        flash[:notice] = "Unable to add that person."
        redirect_to :back
      end
    else
      flash[:notice] = "You can't add yourself!"
      redirect_to :back
    end
  end
  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Friend Removed."
    redirect_to profile_path
  end
end

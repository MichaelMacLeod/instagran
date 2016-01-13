class FriendshipsController < ApplicationController

  def index
  end
  
  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])

    if @friendship.save
      flash[:notice] = "Added friend."
      redirect_to friendships_path
    else
      flash[:error] = "Unable to add friend."
      redirect_to friendships_path
    end
  end

  def new
    @users = User.all
  end

#current.user.friendships.find - means the current user can only see their friendships and only destroy their own friendships. Now it's impossible to destroy other friendships. 
  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship."
    redirect_to posts_path
  end
end
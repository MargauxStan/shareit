class FriendshipsController < ApplicationController

  def create
    # on cree deux instances de friendship, par defaut, le status est false (aka "en attente"),
    Friendship.create(current_user_id, params[:friend_id])
    Friendship.create(params[:friend_id], current_user_id)
  end

  def validate
    # a appeler apres que la demande d'amis ait ete acceptee
    user_friendship = Friendship.find_by(user_id: current_user_id, friend_id: params[:friend_id])
    friend_friendship = Friendship.find_by(user_id: params[:friend_id], friend_id: current_user_id)
    user_friendship.status = true
    friend_friendship.status = true
  end

  def destroy
    friendship1 = Friendship.find_by(user_id: current_user_id, friend_id: params[:friend_id])
    friendship2 = Friendship.find_by(user_id: params[:friend_id], friend_id: current_user_id)
    friendship1.destroy
    friendship2.destroy
  end

end

class FriendshipsController < ApplicationController

  def create
    @friendship = Friendship.new(current_user_id, params[:friend_id])
    @friendship.save
  end

  def validate
    # a appeler apres que la demande d'amis a ete acceptee
    @new_friendship = Friendship.create_reciprocal_for_ids(current_user_id, params[:friend_id])
  end

  def destroy
    Friendship.destroy_reciprocal_for_ids(current_user_id, params[:friend_id])
  end

end

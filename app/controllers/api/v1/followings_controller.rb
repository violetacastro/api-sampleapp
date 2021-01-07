class Api::V1::FollowingsController < Api::ApplicationController

  def create
    following = Following.new
    following.follower_id = @current_api_user.id
    following.author_id = params[:author_id]
    following.save
    binding.pry
  end

end

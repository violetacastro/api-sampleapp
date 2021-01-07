class Api::V1::FollowingsController < Api::ApplicationController

  def create
    following = Following.new
    following.follower_id = @current_api_user.id
    following.author_id = params[:author_id]

    if following.save
      render json: {
        status: 200
      }.to_json
    else
      render json: {
        status: 400
      }.to_json
    end
  end

end

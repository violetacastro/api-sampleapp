class Api::V1::FollowingsController < Api::ApplicationController

  def create
    following = Following.new
    following.follower_id = @current_api_user.id
    following.author_id = params[:author_id]

    following_exist = Following.find_by(follower_id: @current_api_user.id,
                                        author_id: params[:author_id])
    if following_exist
      render json: {}, status: 401
    elsif following.follower_id == following.author_id
      render json: {}, status: 401
    elsif following.save
      render json: {}, status: 201
    else
      render json: {}, status: 401
    end

  end

end

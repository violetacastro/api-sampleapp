class Api::V1::FollowingsController < Api::ApplicationController

  def create
    following = Following.new
    following.follower_id = @current_api_user.id
    following.author_id = params[:author_id]

    following_exist = Following.find_by(follower_id: @current_api_user.id,
                                        author_id: params[:author_id])
    if following_exist
      render json: { message: "following exist already" }, status: 401
    elsif following.follower_id == following.author_id
      render json: { message: "cant follow yourself" }, status: 401
    elsif following.save
      render json: { message: "successful following" }, status: 201
    else
      render json: { mensage: "other" }, status: 401
    end

  end

end

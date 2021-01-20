class Api::V1::FollowingsController < Api::ApplicationController

  def create
    following = Following.new
    following.follower_id = @current_api_user.id
    following.author_id = params[:author_id]

    following_exist = Following.find_by(follower_id: @current_api_user.id,
                                        author_id: params[:author_id])
    if following_exist
      render json: { message: "following exist already", error: true }, status: 400
    elsif following.follower_id == following.author_id
      render json: { message: "cant follow yourself", error: true }, status: 400
    elsif following.save
      render json: { message: "successful following" }, status: 201
    else
      render json: { message: "Oops we could not follow this user for you. Please try again soon",
                     errors: following.errors.full_messages, error: true }, status: 400
    end
  end

  # check if there's an existing following already wih the current user and
  # the author_id
  def get_following
    # check if theres an author_id
    author_id = params[:author_id]
    # if the following exist return the following, else will be null
    if !author_id
      render json: { error: true, message: "author_id not found" }, status: 400
    else
      following = Following.find_by(follower_id: @current_api_user.id,
                                 author_id: author_id)
      render json: { following: following }, status: 200
    end

  end

end

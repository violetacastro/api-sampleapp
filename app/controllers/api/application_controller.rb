module Api
  class ApplicationController < ActionController::API
    before_action :authenticate_request
    attr_reader :current_api_user

    private

    def authenticate_request
      @current_api_user = AuthorizeApiRequest.call(request.headers)
                                             .result

      if !@current_api_user
        render json: {  error: "This is not a authorized request." },
               status: :unauthorized
      end
    end
  end
end

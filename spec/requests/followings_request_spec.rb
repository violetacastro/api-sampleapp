require 'rails_helper'

RSpec.describe "Followings", type: :request do

  describe "GET /follow" do
    it "returns http success" do
      get "/followings/follow"
      expect(response).to have_http_status(:success)
    end
  end

end

require 'rails_helper'

RSpec.describe "SignIns", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/sign_in/index"
      expect(response).to have_http_status(:success)
    end
  end

end

require 'rails_helper'

RSpec.describe Api::V1::AuthenticationController, type: :controller do

  describe "POST #authenticate" do
    it "returns http success" do
      get :authenticate
      expect(response).to have_http_status(:success)
    end
  end

end

require 'rails_helper'

RSpec.describe ApiController, :type => :controller do

  before(:each) { setup }

  describe "POST finish_level" do
    it "returns http success" do
      post :finish_level, user_id: @user.id, level_number: @levels.first.number
      expect(response).to have_http_status(:success)
    end

    it "sets the high score" do
      post :finish_level, user_id: @user.id, level_number: @levels.first.number, score: 2000
      post :finish_level, user_id: @user.id, level_number: @levels.first.number, score: 1000
      expect(@user.user_levels.find_by!(level: @levels.first).high_score).to eq(2000)
    end
  end

end

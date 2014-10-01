require 'rails_helper'

RSpec.describe ApiController, :type => :controller do

  before(:each) do
    @user = User.create!
    @levels = (1..10).map { |n| Level.create! number: n }
    @levels.each_cons(2) do |level, next_level|
      level.update! next_level: next_level
    end
  end

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

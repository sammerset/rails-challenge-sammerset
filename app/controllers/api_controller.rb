class ApiController < ApplicationController
  def leaderboard
    level = Level.find_by! number: params[:level_number]
    attempts = level.attempts.includes(:user_level).order(score: :desc)
    render json: {
      status: 'success',
      leaderboard: attempts.map { |a| { user: a.user_level.user_id, score: a.score } }
    }
  end

  def finish_level
    user = User.find params[:user_id]
    level = Level.find_by! number: params[:level_number]
    score = params[:score]
    user.finish_level(level, score)
    render json: {
      status: 'success',
      message: "User #{user.id} passed level #{level.number} with score #{score}",
    }
  end
end

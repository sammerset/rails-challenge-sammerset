class ApiController < ApplicationController
  def finish_level
    user = User.find params[:user_id]
    level = Level.find_by! number: params[:level_number]
    score = params[:score]
    user_level = user.user_levels.find_or_create_by! level: level
    user_level.attempts.create! score: score
    user_level.update! high_score: score
    render json: {
      status: 'success',
      message: "User #{user.id} passed level #{level.number} with score #{score}",
    }
  end
end

class ApiController < ApplicationController
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

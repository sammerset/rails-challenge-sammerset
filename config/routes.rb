Rails.application.routes.draw do
  get  'api/leaderboard/:level_number',           to: 'api#leaderboard'
  post 'api/:user_id/finish_level/:level_number', to: 'api#finish_level'
end

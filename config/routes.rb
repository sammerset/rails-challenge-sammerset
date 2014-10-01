Rails.application.routes.draw do
  post 'api/:user_id/finish_level/:level_number', to: 'api#finish_level'
end

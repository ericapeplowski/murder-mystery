Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'game#index'
  get '/level/:id', to: 'game#level'
  post '/submit', to: 'game#submit'

end

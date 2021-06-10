Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games
  get '/games/:gameId/players/:playerName', to: 'games#hand'
  post '/games/:gameId/players/:playerName/fish', to: 'games#fish'
end

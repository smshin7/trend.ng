Rails.application.routes.draw do
 

  get "/oauth/connect" => "sessions#connect"
  post "/oauth/connect" => "sessions#connect"

  get "/auth/instagram/callback" => "sessions#callback"

  get 'signout' => 'sessions#destroy'
  post 'signout' => 'sessions#destroy'

  root 'trends#homepage'

  get '/trends' => 'trends#index', as: :trends

  get '/about' => 'trends#about', as: :about

  get '/media_like/:id' => 'trends#like_image'
  get '/media_unlike/:id' => 'trends#unlike_image'

end

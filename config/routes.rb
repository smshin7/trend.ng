Rails.application.routes.draw do
 
  get 'auth/instagram', as: "auth_provider"
  get 'auth/instgram/callback' => 'sessions#create'
  post 'auth/instagram/callback' => 'sessions#create'
  get 'auth/failure' => redirect('/')
  post 'auth/failure' => redirect('/')
  get 'signout' => 'sessions#destroy'
  post 'signout' => 'sessions#destroy'

  root 'trends#homepage'

  get '/trends' => 'trends#index', as: :trends

  get '/about' => 'trends#about', as: :about

end

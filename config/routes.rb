Rails.application.routes.draw do
  root "static_page#home"
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/help', to: 'static_page#help'
  get '/about', to: 'static_page#about'

  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end

Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :posts

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  get '/logout' => 'session#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

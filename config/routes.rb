Rails.application.routes.draw do

  devise_for :users
  resources :posts do
  	resources :comments
  end

  root "posts#index"
get '/', to: 'posts#index'
  get '/users/sign_in', to: 'devise/sessions#new' 'devise/sessions#create'
  get '/about', to: 'pages#about'
  get '/users/sign_out', to: 'devise/sessions#destroy'

end

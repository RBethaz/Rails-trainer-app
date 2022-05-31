Rails.application.routes.draw do
  resources :users
  get 'categorie/index'
  get 'categorie/show'
  get 'categorie/update'
  get 'categorie/destroy'
  get 'categorie/new'
  get 'categorie/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  root to: 'pages#home'
  get '/bonjour(/:name)', to: 'pages#salut', as: 'salut'
  resources :posts
  resources :categories

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  
  get 'user/login'

  get 'newsfeeds/new'
  get 'newsfeeds/create'
  get 'newsfeeds/edit'
  get 'newsfeeds/update'
  get 'newsfeeds/destroy'

  get 'sessions/create'
  get 'sessions/destroy'

  get 'members/about'
  get 'members/home'
  get 'members/faq'
  get 'members/officers'

  # below are routes needed for google authentication
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  
  root 'user#login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

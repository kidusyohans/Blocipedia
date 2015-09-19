Rails.application.routes.draw do
  devise_for :users

  get 'charges/create'

  get 'user/index'

  get 'user/show'

  resources :charges, only: [:new, :create]

  resources :wikis
  
  get 'about' => 'welcome#about'

 root to: 'welcome#index'
end

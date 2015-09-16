Rails.application.routes.draw do


  get 'user/index'

  get 'user/show'



  resources :wikis
  
  get 'about' => 'welcome#about'

 root to: 'welcome#index'
end

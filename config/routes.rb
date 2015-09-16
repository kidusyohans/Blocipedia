Rails.application.routes.draw do
  get 'user/index'

  get 'user/show'

  get 'welcome/index'

  get 'welcome/about'

  devise_for :users

 root to: 'welcome#index'
end

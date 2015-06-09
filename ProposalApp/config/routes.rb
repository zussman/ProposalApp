Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :phonetypes, :emails

  root 'welcome#index'

end
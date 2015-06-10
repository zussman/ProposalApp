Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :phone_types, :emails

  root 'welcome#index'

end
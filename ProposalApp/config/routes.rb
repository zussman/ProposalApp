Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :phone_types, :emails, :phone_numbers, :people

  root 'welcome#index'

end
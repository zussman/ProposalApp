Rails.application.routes.draw do
  get 'cities/new'

  get 'cities/index'

  get 'cities/_form'

  get 'states/new'

  get 'states/index'

  get 'states/_form'

  devise_for :users
  get 'welcome/index'

  resources :phone_types, 
            :emails, 
            :phone_numbers, 
            :people, 
            :utilities, 
            :homes, 
            :addresses, 
            :products,
            :services,
            :states,
            :cities

  root 'welcome#index'

end
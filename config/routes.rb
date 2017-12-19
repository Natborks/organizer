Rails.application.routes.draw do
  get 'admin/create'

  root to: 'users#new'
  get 'static_pages/thanks'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :sessions
end

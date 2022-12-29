Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :concursos do
    resources :postulations
  end

  resources :areas
  resources :users

    root 'concursos#index'
  end




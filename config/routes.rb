Rails.application.routes.draw do
  resources :teams
  resources :projects
  resources :tasks

  devise_for :users

  authenticated do
    root to: 'tasks#index', as: :authenticated_root
  end

  root to: 'pages#landing'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'projects/index'
  get 'projects/show'
  get 'tasks/index'
  get 'teams/index'
  devise_for :users

  root to: 'pages#landing'

  get 'app', to: 'pages#app'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

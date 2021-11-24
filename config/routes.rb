Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :replacements, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'pages#dashoard'
  resources :users
  resources :patients
  resources :replacements, only: %w[new create]
end

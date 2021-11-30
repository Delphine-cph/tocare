Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "pages#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'pages#dashboard'

  get "users/:id", to: "users#show", as: :user

  resources :users
  resources :patients do
    resources :transmissions, only: [:create, :index]
  end
  resources :replacements, only: %w[new create index]
  resources :chatrooms, only: %i[index show create] do
    resources :messages, only: :create
  end
end

Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

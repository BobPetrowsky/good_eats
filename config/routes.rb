Rails.application.routes.draw do
  resources :restraunts, only: [:index, :show, :create, :new] do
    resources :reviews, only: [:create, :new]
  end
end

Rails.application.routes.draw do
  devise_for :users

  root to: "activities#index"
  resources :activities, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: :index
end

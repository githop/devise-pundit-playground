Rails.application.routes.draw do
  devise_for :merchants

  root to: 'merchants#index'
  resources :merchants do 
    resources :products
    resources :orders, only: [:show, :index]
  end
end

Rails.application.routes.draw do
  root 'recruitment#index'
  devise_for :users
  resources :recruitments
end

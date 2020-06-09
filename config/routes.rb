Rails.application.routes.draw do

  #devise_for :users
  resources :recruitments

  resources :users, only: [:show]

  # ログイン、アカウント編集後、任意のページに推移させるための記述
  devise_for :users, controllers: {
        registrations: 'users/registrations'
  }
end

Rails.application.routes.draw do

  get 'users/show'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  #devise_for :users

  # resources :users, only: [:show]

  # # ログイン、アカウント編集後、任意のページに推移させるための記述
  # devise_for :users, controllers: {
  #       registrations: 'users/registrations'
  # }

  # devise_scope :user do
  #   root :to => "devise/sessions#new"
  # end

  devise_for :users, :controllers => {
    sessions: 'users/sessions'
  }



  devise_scope :user do
    root "users/sessions#new"
  end

  resources :users, only: [:show, :index]
  resources :recruitments

  resources :favorites, only: [:create, :destroy]

  get "recruitments/favorites_index/:id" => "recruitments#favorites_index", as: 'favorites_index'
end

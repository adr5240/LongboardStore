Rails.application.routes.draw do

    namespace :api, defaults: { format: :json } do
        resources :users, only: [:create]
        resource :sessions, only: [:create, :destroy]

        resources :decks, only: [:create, :index, :show, :update, :destroy]
        resources :trucks, only: [:create, :index, :show, :update, :destroy]
        resources :wheels, only: [:create, :index, :show, :update, :destroy]
        resources :bearings, only: [:create, :index, :show, :update, :destroy]
    end

    root to: "static_pages#root"
end

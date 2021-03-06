Rails.application.routes.draw do

    # Cart
    resources :carts, only: [:show, :index], defaults: { format: :json }
    resources :order_items, only: [:create, :update, :destroy], defaults: { format: :json }

    namespace :api, defaults: { format: :json } do
        resources :users, only: [:create]
        resource :sessions, only: [:create, :destroy]

        # Products
        resources :bearings, only: [:create, :index, :show, :update, :destroy]
        resources :decks, only: [:create, :index, :show, :update, :destroy]
        resources :information, only: [:index]
        resources :pictures, only: [:index, :show]
        resources :trucks, only: [:create, :index, :show, :update, :destroy]
        resources :wheels, only: [:create, :index, :show, :update, :destroy]

    end

    root to: "static_pages#root"
end

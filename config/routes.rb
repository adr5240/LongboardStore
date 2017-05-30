Rails.application.routes.draw do

    # Cart
    resource :cart, only: [:show]
    resources :order_items, only: [:create, :update, :destroy]

    namespace :api, defaults: { format: :json } do
        resources :users, only: [:create]
        resource :sessions, only: [:create, :destroy]

        # Products
        resources :decks, only: [:create, :index, :show, :update, :destroy]
        resources :trucks, only: [:create, :index, :show, :update, :destroy]
        resources :wheels, only: [:create, :index, :show, :update, :destroy]
        resources :bearings, only: [:create, :index, :show, :update, :destroy]

    end

    root to: "static_pages#root"
end

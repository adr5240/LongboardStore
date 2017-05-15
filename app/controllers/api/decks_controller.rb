class Api::DecksController < ApplicationController
    def create
        @deck = Deck.new(deck_params)

        if @deck.save
            render :show
        else
            render json: { :errors => @deck.errors.full_messages }, status: 422
        end
    end

    def index
        @decks = Deck.all
        render :index
    end

    def show
        @deck = Deck.find_by_id(params[:id])
        if @deck
            render :show
        else
            render json: { :errors => ["It doesn't look like this deck exists."] }, status: 404
        end
    end

    def update
        @deck = Deck.find_by_id(params[:id])

        if @deck.update(deck_params)
            render :show
        else
            render json: { :errors => @deck.errors.full_messages }, status: 422
        end
    end

    def destroy
        @deck = Deck.find_by_id(params[:id])

        if @deck.destroy
            render :show
        else
            render json: { :errors => @deck.errors.full_messages }, status: 404
        end
    end

    def deck_params
        params.require(:deck).permit(:name, :brand, :description, :concave, :flex, :mount,
                                     :traction, :shape, :price, :length, :width, :wheelbase, :image)
    end
end

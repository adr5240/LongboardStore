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
        debugger
        @decks = params[:filter] ? filter() : Deck.all
        render :index
    end

    def show
        @deck = params[:id] == "-1" ? Deck.first : Deck.find_by_id(params[:id])
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

    private

    def deck_params
        params.require(:deck).permit(:name, :brand, :description, :concave, :flex, :mount,
                                     :traction, :shape, :price, :length, :width, :wheelbase)
    end

    def filter_params
        params.require(:filter).permit(brand: [], mount: [], shape: [], concave: [], flex: [], traction: [])
    end

    def filter
        price = params[:filter] ? params[:filter][:price] : -1
        length = params[:filter] ? params[:filter][:length] : -1
        decks = Deck.where(filter_params)

        # Deck.all.select(:brand).group_by(&:brand).keys() TODO fix search

        decks = case price
                    when "1" then decks.select{ |x| x.price < 10000 }
                    when "2" then decks.select{ |x| x.price > 10000 && x.price < 20000 }
                    when "3" then decks.select{ |x| x.price > 20000 }
                    else decks
        end

        decks = case length
                    when "1" then decks.select{ |x| x.length < 32 }
                    when "2" then decks.select{ |x| x.length > 32 && x.length < 37 }
                    when "3" then decks.select{ |x| x.length > 37 }
                    else decks
        end

        return decks
    end
end

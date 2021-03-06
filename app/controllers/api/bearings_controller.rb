class Api::BearingsController < ApplicationController
    def create
        @bearing = Bearing.new(bearing_params)

        if @bearing.save
            render :show
        else
            render json: { :errors => @bearing.errors.full_messages }, status: 422
        end
    end

    def index
        @bearings = params[:filter] ? filter() : Bearing.all
        @order = nil
        if params[:sortBy]
            inOrder = @bearings.order(params[:sortBy])
            @order = inOrder.map { |el| el.id }
        end

        render :index
    end

    def show
        @bearing = params[:id] == "-1" ? Bearing.first : Bearing.find_by_id(params[:id])
        if @bearing
            render :show
        else
            render json: { :errors => ["It doesn't look like this bearing exists."] }, status: 404
        end
    end

    def update
        @bearing = Bearing.find_by_id(params[:id])

        if @bearing.update(bearing_params)
            render :show
        else
            render json: { :errors => @bearing.errors.full_messages }, status: 422
        end
    end

    def destroy
        @bearing = Bearing.find_by_id(params[:id])

        if @bearing.destroy
            render :show
        else
            render json: { :errors => @bearing.errors.full_messages }, status: 404
        end
    end

    private

    def bearing_params
        params.require(:bearing).permit(:name, :brand, :description, :material, :price, :rating)
    end

    def filter_params
        params.require(:filter).permit(brand: [], material: [], rating: [])
    end

    # TODO Refactor #filter
    def filter
        price = params[:filter] ? params[:filter][:price] : -1
        bearings = Bearing.where(filter_params)

        bearings = case price
                    when "1" then bearings.select{ |x| x.price < 10000 }
                    when "2" then bearings.select{ |x| x.price > 10000 && x.price < 20000 }
                    when "3" then bearings.select{ |x| x.price > 20000 }
                    else bearings
        end

        return bearings
    end
end

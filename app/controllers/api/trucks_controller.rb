class Api::TrucksController < ApplicationController
    def create
        @truck = Truck.new(truck_params)

        if @truck.save
            render :show
        else
            render json: { :errors => @truck.errors.full_messages }, status: 422
        end
    end

    def index
        @trucks = params[:filter] ? filter() : Truck.all
        render :index
    end

    def show
        @truck = params[:id] == "-1" ? Truck.first : Truck.find_by_id(params[:id])
        if @truck
            render :show
        else
            render json: { :errors => ["It doesn't look like this truck exists."] }, status: 404
        end
    end

    def update
        @truck = Truck.find_by_id(params[:id])

        if @truck.update(truck_params)
            render :show
        else
            render json: { :errors => @truck.errors.full_messages }, status: 422
        end
    end

    def destroy
        @truck = Truck.find_by_id(params[:id])

        if @truck.destroy
            render :show
        else
            render json: { :errors => @truck.errors.full_messages }, status: 404
        end
    end

    private

    def truck_params
        params.require(:truck).permit(:name, :brand, :description, :width, :angle, :hole_pattern, :price, :image)
    end

    def filter_params
        params.require(:filter).permit(brand: [], angle: [], hole_pattern: [])
    end

    def filter
        price = params[:filter] ? params[:filter][:price] : -1
        trucks = Truck.where(filter_params)

        # Truck.all.select(:brand).group_by(&:brand).keys() TODO fix search

        trucks = case price
                    when "1" then trucks.select{ |x| x.price < 10000 }
                    when "2" then trucks.select{ |x| x.price > 10000 && x.price < 20000 }
                    when "3" then trucks.select{ |x| x.price > 20000 }
                    else trucks
        end

        return trucks
    end
end

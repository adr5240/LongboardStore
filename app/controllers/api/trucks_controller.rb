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
        @trucks = Truck.all
        render :index
    end

    def show
        @truck = Truck.find_by_id(params[:id])
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

    def truck_params
        params.require(:truck).permit(:name, :brand, :description, :width, :angle, :hole_pattern, :price)
    end
end

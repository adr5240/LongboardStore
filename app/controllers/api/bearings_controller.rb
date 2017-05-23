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
        @bearings = Bearing.all
        render :index
    end

    def show
        @bearing = Bearing.find_by_id(params[:id])
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

    def bearing_params
        params.require(:bearing).permit(:name, :brand, :description, :material, :price, :rating)
    end
end

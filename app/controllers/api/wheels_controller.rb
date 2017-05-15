class Api::WheelsController < ApplicationController
    def create
        @wheel = Wheel.new(wheel_params)

        if @wheel.save
            render :show
        else
            render json: { :errors => @wheel.errors.full_messages }, status: 422
        end
    end

    def index
        @wheels = Wheel.all
        render :index
    end

    def show
        @wheel = Wheel.find_by_id(params[:id])
        if @wheel
            render :show
        else
            render json: { :errors => ["It doesn't look like this wheel exists."] }, status: 404
        end
    end

    def update
        @wheel = Wheel.find_by_id(params[:id])

        if @wheel.update(wheel_params)
            render :show
        else
            render json: { :errors => @wheel.errors.full_messages }, status: 422
        end
    end

    def destroy
        @wheel = Wheel.find_by_id(params[:id])

        if @wheel.destroy
            render :show
        else
            render json: { :errors => @wheel.errors.full_messages }, status: 404
        end
    end

    def wheel_params
        params.require(:wheel).permit(:name, :brand, :description, :lip_profile, :hub_placement,
                                      :price, :diameter, :durometer, :width, :image)
    end
end

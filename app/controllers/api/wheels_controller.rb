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
        @wheels = params[:filter] ? filter() : Wheel.all
        @order = nil
        if params[:sortBy]
            inOrder = @wheels.order(params[:sortBy])
            @order = inOrder.map { |el| el.id }
        end

        render :index
    end

    def show
        @wheel = params[:id] == "-1" ? Wheel.first : Wheel.find_by_id(params[:id])
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

    private

    def wheel_params
        params.require(:wheel).permit(:name, :brand, :description, :lip_profile, :hub_placement,
                                      :price, :diameter, :durometer, :width, :image)
    end

    def filter_params
        params.require(:filter).permit(brand: [], lip_profile: [], hub_placement: [])
    end

    # TODO Refactor #filter
    def filter
        price = params[:filter] ? params[:filter][:price] : -1
        durometer = params[:filter] ? params[:filter][:durometer] : -1
        wheels = Wheel.where(filter_params)

        wheels = case price
                    when "1" then wheels.select{ |x| x.price < 10000 }
                    when "2" then wheels.select{ |x| x.price >= 10000 && x.price <= 20000 }
                    when "3" then wheels.select{ |x| x.price > 20000 }
                    else wheels
        end

        wheels = case durometer
                    when "1" then wheels.select{ |x| x.durometer < 78 }
                    when "2" then wheels.select{ |x| x.durometer >= 78 && x.durometer <= 82 }
                    when "3" then wheels.select{ |x| x.durometer > 82 }
                    else wheels
        end

        return wheels
    end
end

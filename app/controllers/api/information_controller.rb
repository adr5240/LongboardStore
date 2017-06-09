class Api::InformationController < ApplicationController

    def index
        if params[:product_type]
            product_type = params[:product_type].constantize
            @information = get_filters(product_type)
            render :index
        else
            render json: { :errors => ["We can't figure out what you're looking for..."] }, status: 422
        end
    end

    private

    def get_filters(product_type)
        information = {};

        keys = product_type.get_filters

        keys.each do |key|
            information[key.to_sym] = product_type.all.select(key.to_sym).group_by(&key.to_sym).keys()
        end

        information
    end
end

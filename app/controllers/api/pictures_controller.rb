class Api::PicturesController < ApplicationController

    def create
        @picturable = find_picturable
        @picture = @picturable.pictures.build(picture_params)
    end

    def index
        @pictures = Picture.where(picture_params)
        render :index
    end

    def show
        @pictures = Picture.where(picture_params)
        if @pictures
            render :index
        else
            render json: { :errors => ["It doesn't look like this picture exists."] }, status: 404
        end
    end

    def update
        @picture = Picture.find_by_id(params[:id])

        if @picture.update(picture_params)
            render :show
        else
            render json: { :errors => @picture.errors.full_messages }, status: 422
        end
    end

    def destroy
        @picture = Picture.find_by_id(params[:id])

        if @picture.destroy
            render :show
        else
            render json: { :errors => @picture.errors.full_messages }, status: 404
        end
    end

    private

    def find_picturable
        params.each do |name, value|
            if name =~ /(.+)_id$/
                return $1.classify.constantize.find(value)
            end
        end
        nil
    end

    def picture_params
        params.require(:picture).permit(:image, :picturable_type, :picturable_id)
    end
end

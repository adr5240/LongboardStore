class Api::UsersController < ApplicationController
    before_action :redirect_if_logged_in

    def create
        @user = User.new(user_params)

        if @user.save
            login!(@user)
            render 'api/users/show'
        else
            render json: { :errors => @user.errors.full_messages }, status: 422
        end
    end

    def user_params
        params.require(:user).permit(:username, :password, :profile_pic)
    end
end

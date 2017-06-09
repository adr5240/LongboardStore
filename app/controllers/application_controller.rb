class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    helper_method :current_user, :current_order, :is_logged_in?, :logout, :redirect_if_not_logged_in

    def current_order
        if !session[:order_id].nil? && Order.exists?(session[:order_id])
            order = Order.find(session[:order_id])
        else
            order = order || Order.create(tax: 0, shipping: 0)
            session[:order_id] = order.id
        end
    end

    def current_user
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    def login!(user)
        session[:session_token] = user.reset_session_token!

        if Order.find_by(user_id: user.id)
            OrderItem.where(order_id: session[:order_id]).delete_all
            Order.delete(session[:order_id])
            session[:order_id] = Order.find_by(user_id: user.id).id
        else
            order = current_order
            order.user_id = user.id
            order.save!
        end

        @current_user = user
    end

    def logout
        current_user.try(:reset_session_token!)
        session[:session_token] = nil
        session[:order_id] = Order.create(tax: 0, shipping: 0).id
        @current_user = nil
    end

    def is_logged_in?
        !!current_user
    end

    def redirect_if_logged_in
        redirect_to root_url if is_logged_in?
    end

    def redirect_if_not_logged_in
        redirect_to new_session_url unless is_logged_in?
    end
end

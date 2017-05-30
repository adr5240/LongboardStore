class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    helper_method :current_user, :current_order, :is_logged_in?, :logout, :redirect_if_not_logged_in

    def current_order
        if !session[:order_id].nil?
            Order.find(session[:order_id])
        else
            order = Order.create(tax: 0, shipping: 0)
            session[:order_id] = order.id
        end
    end

    def current_user
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    def login!(user)
        session[:session_token] = user.reset_session_token!
        @current_user = user
    end

    def logout
        current_user.try(:reset_session_token!)
        session[:session_token] = nil
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

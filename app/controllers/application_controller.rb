class ApplicationController < ActionController::Base
  # before_filter :set_time_zone, if: :user_signed_in?
  def current_user
      return unless session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  protect_from_forgery with: :exception
  private

    def set_time_zone
      Time.zone = current_user.time_zone
    end
end

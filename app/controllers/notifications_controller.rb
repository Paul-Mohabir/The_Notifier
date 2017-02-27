class NotificationsController < ApplicationController

  def show
  end

  def new
    @notification = Notification.new
  end

  def create
    @notification = Notification.new(notification_params)
  end

  def delete
  end

  private

  def notification_params
    params.require(:user).permit 

end

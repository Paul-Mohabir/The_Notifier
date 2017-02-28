class NotificationsController < ApplicationController


  def index
  end

  def show
  end

  def new
    @notification = Notification.new
  end

  def create
    @notification = Notification.new(notification_params)
  end

  def delete
    @notification = Notification.delete
  end

  private

  def notification_params
    params.require(:notification).permit(:open_position)
  end

end

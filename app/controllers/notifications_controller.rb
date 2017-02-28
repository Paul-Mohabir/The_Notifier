class NotificationsController < ApplicationController


  def index
    @notifications = Notification.all
  end

  def show
    @notification = Notification.find(params[:id])
  end

  def new
    @notification = Notification.new
  end

  def create
    @notification = Notification.new(notification_params)
    if @notification.save
      redirect_to notifications_path
    else
      render :new
    end
    # save something to the database
    # do something to respond
  end

  def delete
    notification = Notification.find(params[:id])
    # delete that notification
    # do something to respond
  end

  private

  def notification_params
    params.require(:notification).permit(:open_position)
  end

end

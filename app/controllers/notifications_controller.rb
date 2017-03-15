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
    @notification.author_id = current_user.id
    @notification.company_id = current_user.company_id

    if @notification.save
      @client = Twilio::REST::Client.new ENV["account_sid"], ENV["auth_token"]
      @client.messages.create(
      from: '+16475590258',
      to: '+16476181300',
      body: 'Hey there!'
      )
      redirect_to notifications_path
    else
      render :new
    end
  end

  def delete
    notification = Notification.find(params[:id])
    # delete that notification
    # do something to respond
  end

  private

  def notification_params
    params.require(:notification).permit(:author_id, :recipient_id, :company_id, :title, :message)
  end

end

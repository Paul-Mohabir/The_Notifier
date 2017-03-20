class NotificationsController < ApplicationController



  def index
    @notifications = Notification.all
  end

  def show

    respond_to do |format|
      format.html
      format.json do
        render json: @notification, except: %i(updated_at)
      end
    end

  end

  def new
    @notification = Notification.new
  end

  def create
    # line 18 is going throught the hash which is the params and then going through the nested hashes through notification
    recipient = User.find(params["notification"]["recipient_id"])
    messaged = params["notification"]["message"]
    @notification = Notification.new(notification_params)
    @notification.author_id = current_user.id
    @notification.company_id = current_user.company_id

    if @notification.save
      @client = Twilio::REST::Client.new ENV["account_sid"], ENV["auth_token"]
      @client.messages.create(
      from: '+16475590258',
      to: recipient.phone,
      body: "#{messaged}"
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

  def load_notification
    @notification = Notification.find(params[:id])
  end

  def notification_params
    params.require(:notification).permit(:author_id, :recipient_id, :company_id, :title, :message)
  end

end

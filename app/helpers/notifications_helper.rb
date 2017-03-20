module NotificationsHelper
  def new_messages
  Message.where(:recipient_id => current_user.id, :read_at => nil).count
end
end

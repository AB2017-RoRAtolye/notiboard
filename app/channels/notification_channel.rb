class NotificationChannel < ApplicationCable::Channel
  def subscribed
    stream_from "notification_for_#{params["board_id"]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

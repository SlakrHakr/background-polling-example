class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "web_notifications_channel_#{params[:environmentId]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

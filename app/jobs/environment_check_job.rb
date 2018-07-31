class EnvironmentCheckJob < ActiveJob::Base
  def perform
    p 'here'
    ActionCable.server.broadcast 'web_notifications_channel_12345', message: '<p>Hello World!</p>'
    ActionCable.server.broadcast 'web_notifications_channel_67890', message: '<p>Something Else!</p>'
  end
end

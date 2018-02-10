class AppearanceChannel < ApplicationCable::Channel
  def subscribed
    stream_from "appearance_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def appear (data)
      #if data = self.current_user
      ActionCable.server.broadcast 'appearance_channel', {status: data}
      #broadcast_channel
  end
end

class MessageRelayJob < ApplicationJob
  def perform(message)
    ActionCable.server.broadcast(
      'messages',
      message: MessagesController.render(message)
    )
  end
end

class MessagesController < ApplicationController

  def new
    @message = Message.new
    @messages = Message.all
  end

  def create
    message = Message.new(permitted_params[:message])
    message.username = cookies.signed[:username]
    message.save
    MessageRelayJob.perform_later(message)
    head :ok
  end

  private

  def permitted_params
    params.permit(message: [:body])
  end
end

class SessionsController < ApplicationController

  def create
    cookies.signed[:username] = params[:session][:username]
    redirect_to new_message_path
  end

end

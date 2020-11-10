class MessagesController < ApplicationController

  def index
    @messages = Message.all
    render json: @messages
  end

  def create
    @message = Message.create(message_params)
    render json: @message
  end

  def message_params
    params.permit(:username, :content)
  end
end

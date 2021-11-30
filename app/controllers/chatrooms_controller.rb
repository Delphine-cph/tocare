class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
    @public_chatrooms = Chatroom.where.not(name: nil)
    @private_chatrooms = Chatroom.where(name: nil)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  # message perso
  def create
    @chatroom = Chatroom.new
    @chatroom.owner = current_user
    @chatroom.recipient = User.find(params[:id])
    @chatroom.save
    redirect_to chatroom_path(@chatroom)
  end
end

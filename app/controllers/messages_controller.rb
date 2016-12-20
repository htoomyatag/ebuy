class MessagesController < ApplicationController
  before_filter :authenticate_buyer!

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.build(message_params)
    @message.buyer_id = current_buyer.id
    @message.save!

    @path = conversation_path(@conversation)
  end

  private

  def message_params
    params.require(:message).permit(:body, :conversation_code)
  end
end
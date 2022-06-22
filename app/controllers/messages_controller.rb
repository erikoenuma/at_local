class MessagesController < ApplicationController

    def create
        @order = Order.find(params[:id])
        @message = @order.messages.new(message_params)
        @message.save!
        redirect_to order_path(@order)
    end

    private

    def message_params
        params.require(:message).permit(:order_id, :comments, :sender)
    end
end

class MessagesController < ApplicationController

    def create
        @order = Order.find(params[:id])
        @message = @order.messages.new(message_params)

        @messages = @order.messages
        @new_message = Message.new
        respond_to do |format|
            if @message.save
                format.js { render :show }
            end
        end
    end

    private

    def message_params
        params.require(:message).permit(:order_id, :comments, :sender)
    end
end

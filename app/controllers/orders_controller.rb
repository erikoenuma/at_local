class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]

  # GET /orders or /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1 or /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = current_user.orders.new
    @cart = current_user.carts.find(params[:id])
    @items = @cart.items
  end

  # GET /orders/1/edit
  def edit
  end

  def completed
    @order = Order.find(params[:id])
  end

  # POST /orders or /orders.json
  def create
    @cart = current_user.carts.find(params[:id])
    @order = current_user.orders.new(order_params)
    @items = @cart.items

    respond_to do |format|
      if @order.save
        @cart.items.each do |item|
          # 在庫を減らす
          @cart.shop.items.find(item.id).increment!(:counts, -1)
          # cartのitemsをorderに移動させる
          @order.items << item
        end
        # cartを削除
        @cart.destroy

        format.html { redirect_to completed_order_path(@order) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to order_url(@order), notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:user_id, :shop_id, :name, :payment_method, :total_price, :memo, :delivery_method, :deliver_date)
    end
end

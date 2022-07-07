class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy cancel finish_purchase ]
  before_action :user_account_required, except: [:index, :show, :update, :cancel, :reset_conditions, :today]

  # GET /orders or /orders.json
  def index
    # 日付順（降順）にする
    @user_orders = current_user.orders.sort do |a,b|
      b[:created_at] <=> a[:created_at]
    end

    @q = Order.ransack(params[:q])
    if params[:q].nil? && shop_user?(current_user)
      @shop_orders = current_user.shop.orders.sort do |a,b|
        b[:created_at] <=> a[:created_at]
      end
    else
      @shop_orders = @q.result
    end
  end

  # GET /orders/1 or /orders/1.json
  def show
    @messages = @order.messages
    @message = Message.new
    
    # その注文の通知を既読にする
    @order.notifications.where(checked: false, receiver_id: current_user.id).each do |notification|
      notification.update(checked: true)
    end
  end

  # GET /orders/new
  def new
    @order = current_user.orders.new
    @cart = current_user.carts.find(params[:id])
    @items = @cart.items
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

        # 通知を保存する
        @order.notifications.new(sender_id: @order.user.id, receiver_id: @order.shop.id, action: :ordered).save!

        format.html { redirect_to completed_order_path(@order) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # 再注文
  # カートを作成する
  def reorder
    @order = current_user.orders.find(params[:id])
    @cart = current_user.carts.find_or_create_by(shop_id: @order.shop.id)
    @cart.items << @order.items
    redirect_to carts_path
  end

  # 検索条件リセット
  def reset_conditions
    @q = Order.ransack(params[:q])
    redirect_to orders_path
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update!(order_params)
        
        receiver = (@order.user == current_user) ? @order.shop.user : @order.user
        @notification = @order.notifications.new(sender_id: @current_user.id, receiver_id: receiver.id)
        @notification.action = :status_changed

        # 通知を保存する
        @notification.save!

        flash[:success] = t('.success')
        format.html { redirect_to order_url(@order) }
      else
        format.html { redirect_to order_url(@order), status: :unprocessable_entity }
      end
    end
  end

  def cancel
    respond_to do |format|
      if @order.update(status: :canceled)
        receiver = (@order.user == current_user) ? @order.shop.user : @order.user
        @notification = @order.notifications.new(sender_id: @current_user.id, receiver_id: receiver.id)
        @notification.action = :canceled
        @notification.save!

        # 在庫を戻す
        @order.items.each do |item|
          @order.shop.items.find(item.id).increment!(:counts, 1)
        end

        flash[:success] = t('.success')
        format.html { redirect_to order_url(@order) }
      else
        format.html { redirect_to order_url(@order), status: :unprocessable_entity }
      end
    end
  end

  # 取引完了する
  def finish_purchase
    respond_to do |format|
      if @order.update(status: :completed)
        receiver = (@order.user == current_user) ? @order.shop.user : @order.user
        @notification = @order.notifications.new(sender_id: @current_user.id, receiver_id: receiver.id)
        @notification.action = :completed
        @notification.save!

        flash[:success] = t('.success')
        format.html { redirect_to order_url(@order) }
      else
        format.html { redirect_to order_url(@order), status: :unprocessable_entity }
      end
    end
  end

  def today
    yet = current_user.shop.orders.select{|p| p.today? && p.status != ('delivered' || 'sent') }.sort_by{|p| p.deliver_date }
    done = current_user.shop.orders.select{|p| p.today? && p.status == ('delivered' || 'sent') }.sort_by{|p| p.deliver_date }
    @orders = yet + done
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:user_id, :shop_id, :name, :payment_method, :total_price, :memo, :delivery_method, :deliver_date, :status, :address)
    end
end

class CartsController < ApplicationController
  before_action :set_cart, only: %i[ update destroy_item ]
  before_action :user_account_required

  # GET /carts or /carts.json
  def index
    @carts = current_user.carts
  end

  # カートに追加する
  def add
    @shop = Shop.find(params[:id])
    @item = @shop.items.find(params[:item_id])

    @cart = current_user.carts.find_or_create_by(shop_id: @shop.id)
    # 入力された数だけカートに追加する
    params[:counts].to_i.times{ 
      @cart.items << @item
     }
    flash[:success] = t('.success')
    redirect_to item_path(@shop, @item)
  end

  # 商品の数を変更
  def update
    # カートに入っている該当itemをすべて消す
    @cart.items.delete(@item)
    # 入れ直す
    params[:counts].to_i.times { 
      @cart.items << @item
     }
  end

  # 商品削除
  def destroy_item

    @cart.items.delete(@item)
    # カートが空になったらカートごと削除する
    if @cart.items.empty?
      @cart.destroy
    end
    redirect_to carts_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = current_user.carts.find(params[:id])
      @item = @cart.items.find(params[:item_id])
    end
end

class CartsController < ApplicationController
  before_action :set_cart, only: %i[ show update destroy ]

  # GET /carts or /carts.json
  def index
    @carts = current_user.carts
  end

  # GET /carts/1 or /carts/1.json
  def show
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
    @cart = current_user.carts.find(params[:cart_id])
    @item = @cart.items.find(params[:item_id])
    # カートに入っている該当itemをすべて消す
    @cart.items.delete(@item)
    # 入れ直す
    params[:counts].to_i.times { 
      @cart.items << @item
     }
  end

  # 商品削除
  def destroy_item
    @cart = current_user.carts.find(params[:id])
    @item = @cart.items.find(params[:item_id])

    @cart.items.delete(@item)
    # カートが空になったらカートごと削除する
    if @cart.items.empty?
      @cart.destroy
      format.html { redirect_to carts_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = current_user.carts.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_params
      params.require(:cart).permit(:user_id, :shop_id)
    end
end

class CartsController < ApplicationController
  before_action :set_cart, only: %i[ show update destroy ]

  # GET /carts or /carts.json
  def index
    @carts = Cart.all
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

  # PATCH/PUT /carts/1 or /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        flash[:success] = t('.success')
        format.html { redirect_to cart_url(@cart) }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1 or /carts/1.json
  def destroy
    @cart.destroy

    respond_to do |format|
      flash[:success] = t('.success')
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

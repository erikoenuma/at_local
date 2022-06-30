class ShopsController < ApplicationController
  skip_before_action :login_required, only: [:top, :index]
  before_action :set_shop, except: [:index]
  before_action :shop_account_required, except: [:index, :top]

  def index
    @q = Shop.ransack(params[:q])
    @area = Place.find(params[:q][:place_id_eq])
    @shopping_streets = []
    if params[:q][:shopping_street_id_eq_any].present?
      params[:q][:shopping_street_id_eq_any].each do |id|
        @shopping_streets << ShoppingStreet.find(id)
      end
    end
    @item = params[:q][:items_name_cont]
    @shops = @q.result
  end

  # 店舗側から見た店舗詳細画面
  def show
    @items = @shop.items
    @place = Place.find(@shop.place_id) if @shop.place_id
  end

  # 利用者側から見た店舗詳細画面
  def top
    @items = @shop.items.where(private: false)
  end

  # GET /shops/1/edit
  def edit
  end

  # PATCH/PUT /shops/1 or /shops/1.json
  def update
    respond_to do |format|
      if @shop.update(shop_params)
        flash[:success] = t('.success')
        format.html { redirect_to shop_url(@shop) }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shops/1 or /shops/1.json
  def destroy
    @shop.destroy

    respond_to do |format|
      flash[:success] = t('.success')
      format.html { redirect_to shops_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      @shop = Shop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shop_params
      params.require(:shop).permit(:place_id, :name, :address, :access, :introduction, :cancelable_days_before, :private, :image, :shopping_street_id, :telephone_number)
    end
end

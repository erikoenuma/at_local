class ShopsController < ApplicationController
  before_action :set_shop, except: [:index]

  def index
    @q = Shop.ransack(params[:q])
    @area = Place.find(params[:q][:place_id_eq])
    @shops = @q.result
  end

  # GET /shops/1 or /shops/1.json
  def show
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
      params.require(:shop).permit(:name, :address, :access, :introduction, :cancelable_days_before, :private)
    end
end

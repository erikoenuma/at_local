class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]

  # GET /items/1 or /items/1.json
  def show
  end

  # GET /items/new
  def new
    @shop = Shop.find(params[:id])
    @item = @shop.items.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items or /items.json
  def create
    @shop = Shop.find(params[:id])
    @item = @shop.items.new(item_params)

    respond_to do |format|
      if @item.save
        flash[:success] = t('.success')
        format.html { redirect_to shop_path(@shop) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1 or /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        flash[:success] = t('.success')
        format.html { redirect_to item_url(@item) }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1 or /items/1.json
  def destroy
    @item.destroy

    respond_to do |format|
      flash[:success] = t('.success')
      format.html { redirect_to shop_path(@shop) }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @shop = Shop.find(params[:id])
      @item = @shop.items.find(params[:item_id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:shop_id, :name, :price, :description, :private, :counts, :image)
    end
end

class ItemsController < ApplicationController
  skip_before_action :login_required, only: [:show]
  before_action :set_item, only: %i[ show edit update destroy ]
  before_action :shop_account_required, except: [:show]

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

  # 在庫編集画面
  def stock 
    @shop = Shop.find(params[:id])
    @items = @shop.items
  end

  # 在庫更新
  def update_stock
    @shop = Shop.find(params[:id])
    @items = @shop.items
    
    ids = params[:item].keys
    counts = params[:item].values

    respond_to do |format|
      # まとめて更新
      if @items.update(ids, counts)
        flash[:success] = t('.success')
        format.html { redirect_to shop_path(@shop) }
      else
        format.html { render :stock, :status => :unprocessable_entity }
      end
    end
  end

  # POST /items or /items.json
  def create
    @shop = Shop.find(params[:id])
    @item = @shop.items.new(item_params)

    respond_to do |format|
      if @item.save
        # 画像がアップロードされなかったらnoImageをattachする
        if @item.image.nil?
          @item.image.attach(io: File.open(Rails.root.join('app/assets/images/noimage.png')), filename: 'noimage.png')
        end
        
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
        format.html { redirect_to item_url(@shop, @item) }
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

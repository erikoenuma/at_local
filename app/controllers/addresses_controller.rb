class AddressesController < ApplicationController
  before_action :user_account_required
  before_action :set_address, only: %i[ edit update destroy ]
  before_action :permit_params, only: [:decide]

  # GET /addresses or /addresses.json
  def index
    @addresses = current_user.addresses.all
  end

  # GET /addresses/new
  def new
    @address = current_user.addresses.new
  end

  # GET /addresses/1/edit
  def edit
  end

  # POST /addresses or /addresses.json
  def create
    @address = current_user.addresses.new(address_params)

    respond_to do |format|
      if @address.save
        flash[:success] = t('.success')
        format.html { redirect_to addresses_path }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addresses/1 or /addresses/1.json
  def update
    respond_to do |format|
      if @address.update(address_params)
        flash[:success] = t('.success')
        format.html { redirect_to addresses_path }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addresses/1 or /addresses/1.json
  def destroy
    @address.destroy

    respond_to do |format|
      flash[:success] = t('.success')
      format.html { redirect_to addresses_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = current_user.addresses.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def address_params
      params.require(:address).permit(:user_id, :zipcode, :address, :building_name, :name)
    end

    def permit_params
      @attr = params.require('order').permit(:user_id, :shop_id, :name, :payment_method, :total_price, :memo, :delivery_method, :deliver_date, :address)
    end
end

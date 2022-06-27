class UsersController < ApplicationController
  skip_before_action :login_required, only: [:create, :new, :new_shop, :create_shop, :new_user]
  before_action :set_user, only: %i[ show edit update destroy ]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
  end

  def new_user
    @user = User.new
  end

  # 店舗アカウント作成
  def new_shop
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        flash[:success] = t('.success')
        log_in(@user)
        format.html { redirect_to user_url(@user) }
      else
        format.html { render :new_user, status: :unprocessable_entity }
      end
    end
  end

  # 店舗アカウント作成
  def create_shop
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        # 店舗を保存
        @shop = @user.build_shop(name: @user.name)
        @shop.image.attach(io: File.open(Rails.root.join('app/assets/images/noimage.png')), filename: 'noimage.png')
        @shop.save!
        
        flash[:success] = t('.success')
        log_in(@user)
        format.html { redirect_to user_url(@user) }
      else
        format.html { render :new_shop, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        flash[:success] = t('.success')
        format.html { redirect_to user_url(@user) }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      flash[:success] = t('.success')
      format.html { redirect_to new_session_path }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :place_id)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to current_user unless current_user?(@user)
    end
end

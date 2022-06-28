class ApplicationController < ActionController::Base
    before_action :login_required
    include SessionsHelper
    include TimeHelper
    include NotificationsHelper

    private

    def login_required
      unless current_user
        redirect_to new_session_path 
        flash[:danger] = "ログインしてください"
      end
    end

    # 店舗ログインしてないとダメ
    def shop_account_required
      if !shop_user?(current_user)
        session.delete(:user_id)
        redirect_to new_shop_sessions_path
        flash[:danger] = "店舗アカウントでログインしてください"
      end
    end

    # 利用者アカウントじゃないとダメ
    def user_account_required
      if !customer_user?(current_user)
        session.delete(:user_id)
        redirect_to new_session_path
        flash[:danger] = "利用者アカウントでログインしてください"
      end    
    end
end

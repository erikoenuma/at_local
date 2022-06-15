module SessionsHelper
    def current_user
        # ||= は左辺が未定義か儀なら右辺を代入するという意味
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
        current_user.present?
    end

    def log_in(user)
        session[:user_id] = user.id
    end

    def current_user?(user)
        user == current_user
    end

    # 店舗アカウントかどうか
    def shop_user?(user)
        user.shop != nil
    end
end

class SessionsController < ApplicationController
    skip_before_action :login_required, only:[:new, :create, :new_shop, :create_shop]

    # 利用者ログイン
    def new
    end

    # 店舗ログイン
    def new_shop
    end

    # 利用者ログイン
    def create
        user = User.find_by(email: params[:session][:email].downcase)

        if user&.authenticate(params[:session][:password])
            if user.shop != nil
                flash[:danger] = "店舗ログインページからログインしてください"
                render :new
                return
            end
            
            log_in(user)
            flash[:success] = t('.success')
            redirect_to user_path(user.id)
        else
            flash[:danger] = t('.failure')
            render :new
        end
    end

    # 店舗ログイン
    def create_shop
        user = User.find_by(email: params[:session][:email].downcase)

        if user&.authenticate(params[:session][:password])
            if user.shop == nil
                flash[:danger] = "利用者ログインページからログインしてください"
                render :new_shop
                return
            end

            log_in(user)
            flash[:success] = t('.success')
            redirect_to user_path(user.id)
        else
            flash[:danger] = t('.failure')
            render :new_shop
        end
    end

    def destroy
        session.delete(:user_id)
        flash[:success] = t('.success')
        redirect_to new_session_path
    end

end

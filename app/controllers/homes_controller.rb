class HomesController < ApplicationController
    skip_before_action :login_required

    # ホーム画面
    def home
        @items = Item.order("RANDOM()").limit(9)
    end
end

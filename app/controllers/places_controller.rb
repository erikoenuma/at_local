class PlacesController < ApplicationController
    skip_before_action :login_required
    before_action :set_q, except: [:search]

    def prefectures
        # distinctメソッドで重複を避ける
        @regions = Place.select(:region).distinct
        @prefectures = Place.select(:prefecture).distinct
    end

    def areas
        @areas = @q.result
        # 結果を取得したら検索条件を変更する
        @q = Shop.ransack(params[:q])
    end

    def search
        @q = Shop.ransack(params[:q])
        @area = Place.find(params[:id])
        @shopping_streets = @area.shopping_streets
    end

    private

    def set_q
        @q = Place.ransack(params[:q])
    end

end

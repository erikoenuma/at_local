module PlacesHelper

    # 地方名から都道府県を返す
    def prefectures(region)
        return Place.where(:region => region).select(:prefecture).distinct
    end

    # エリア名からPlaceを返す
    def place(area)
        return Place.where(:area => area).first
    end
end

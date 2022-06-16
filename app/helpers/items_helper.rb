module ItemsHelper

    # フォームの「戻る」の遷移先
    def form_back_path(item, shop)
        if item.id.nil?
            shop_path(shop)
        else
            item_path(item)
        end
    end

    # 画像が無い時はnoimageを出す
    # def image_path(image)
    #     image == nil? ? "noimage.png" : rails_blob_path(image)
    # end

    # 在庫の表示の仕方
    def counts_string(counts)
        counts == 0 ? "在庫なし" : "在庫: #{counts}個"
    end
end

module ItemsHelper

    # フォームの「戻る」の遷移先
    def form_back_path(item, shop)
        if item.id.nil?
            shop_path(shop)
        else
            item_path(shop, item)
        end
    end

    # フォームのsubmitのurl
    def form_submit_url(shop, item) 
        if item.id.nil?
            items_path(shop)
        else  
            item_path(shop, item)
        end
    end

    # 画像が無い時はnoimageを出す
    def image_path(item)
        item.image.present? ? rails_blob_path(item.image) : 'noimage.png'
    end

    # 在庫の表示の仕方
    def counts_string(counts)
        counts == 0 ? "在庫なし" : "在庫: #{counts}個"
    end
end

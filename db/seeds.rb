# 本来であれば全国のエリアをseedデータで入れておく
[   
    ["北海道", "旭川", "中心部（宮前～10条通）"],
    ["北海道", "旭川", "永山・末広・春光・大町周辺"],
    ["北海道", "旭川", "豊岡・東光・南周辺"],
    ["北海道", "旭川", "神楽・神居・縁町・旭神周辺"],
    ["北海道", "旭川", "旭川周辺（富良野・名寄）"],
    ["関東", "埼玉県", "大宮・浦和・川口"],
    ["関東", "埼玉県", "上尾・熊谷・本庄"],
    ["関東", "埼玉県", "赤羽・板橋・王子・巣鴨"],
    ["関東", "埼玉県", "西新井・草加・越谷", "春日部", "久喜"],
    ["関東", "埼玉県", "大山・成増・志木・川越・東松山"],
    ["関東", "埼玉県", "練馬・ひばりが丘・所沢・飯能・狭山"],
    ["関東", "埼玉県", "東大宮・古川・小山"],
    ["関東", "埼玉県", "流山・三郷・野田"],
    ["関東", "千葉県", "千葉・稲毛・幕張・鎌取・都賀"],
    ["関東", "千葉県", "柏・松戸・我孫子"],
    ["関東", "千葉県", "市原・木更津・茂原・勝浦・東金・銚子"],
    ["関東", "千葉県", "八千代・佐倉・鎌ヶ谷・成田"],
    ["関東", "千葉県", "船橋・津田沼・本八幡・浦安・市川"],
    ["関西", "京都府", "京都"],
    ["関西", "京都府", "舞鶴・福知山・京丹後"],
    ["関西", "京都府", "長岡京・伏見・山科・京田辺・木津・亀岡"],
    ["関西", "京都府", "門真・枚方・寝屋川・関目・守口・蒲生・鶴見"],
    ["東海", "愛知県", "一宮・犬山・江南・小牧・小田井"],
    ["東海", "愛知県", "八事・平針・瑞穂・野並"],
    ["東海", "愛知県", "星ヶ丘・藤が丘・長久手"],
    ["東海", "愛知県", "日進・豊田・刈谷・岡崎・安城・豊橋"],
    ["東海", "愛知県", "名古屋港・高畑・笠寺・鳴海・大府・豊明・知多・半田"],
    ["東海", "愛知県", "春日井・尾張旭・守山・瀬戸"],
    ["東海", "愛知県", "桑名・四日市・津・鈴鹿・伊勢"]
].each do |region, prefecture, area|
    Place.create({
        region: region,
        prefecture: prefecture,
        area: area
    })
end

[
    ["14", "〇〇商店街"],
    ["14", "some商店街"],
    ["14", "▽▽商店街"],
    ["14", "□□商店街"],
    ["14", "☆☆商店街"]
].each do |place_id, name|
    ShoppingStreet.create({ 
        place_id: place_id,
        name: name
     })
end

[
    ["〇〇八百屋", "testshop@test.com", "password", "password", nil],
    ["△△商店", "testshop2@test.com", "password", "password", nil],
    ["◇◇花屋", "testshop3@test.com", "password", "password", nil],
    ["☆魚屋", "testshop4@test.com", "password", "password", nil],
    ["〇×精肉店", "testshop5@test.com", "password", "password", nil],
    ["testuser", "testuser@test.com", "password", "password", "14"],
    ["testuser2", "testuser2@test.com", "password", "password", "14"],
    ["testuser3", "testuser3@test.com", "password", "password", "14"],
    ["testuser4", "testuser4@test.com", "password", "password", "14"],
    ["testuser5", "testuser5@test.com", "password", "password", "14"],
].each do |name, email, password, password_confirmation, place_id|
    User.create!({ 
        name: name,
        email: email,
        password: password,
        password_confirmation: password_confirmation,
        place_id: place_id
     })
end

[
    ["6", "111-1111", "○○県▽▽市1-1-1", "hogehogeビル305", "testuser"],
    ["7", "111-1111", "○○県▽▽市2-1-1", "hogehogeビル201", "testuser2"],
    ["8", "111-1111", "○○県▽▽市3-1-1", "hogehogeビル333", "testuser3"],
    ["9", "111-1111", "○○県▽▽市4-1-1", "hogehogeビル402", "testuser4"],
    ["10", "111-1111", "○○県▽▽市5-1-1", "hogehogeビル501", "testuser5"],
].each do |user_id, zipcode, address, building_name, name|
    Address.create({ 
        user_id: user_id,
        zipcode: zipcode,
        address: address,
        building_name: building_name,
        name: name
     })
end

[
    ["1", "〇〇八百屋", "14", "〒111-1111 〇〇県◇◇市△区1-1-1", "□□駅から徒歩1分", "03-1234-5678",
        "「☆☆商店街レシートキャンペーン実施中」6/21～7/1に、お買い上げ1,000円(税込)以上のレシートをクーポン券に貼って、
        必要事項を記入して備え付けの応募箱にご応募下さい。
        抽選で３００名様に日本各地の美味しい名産品をプレゼント！
        当選者の発表は商品の発送をもってかえさせて頂きます。
        応募箱は各商店街に設置していますので、お買い物店舗でご確認ください。",
        0, false, rand(1..5)],
    ["2", "△△商店", "14", "〒111-1111 〇〇県◇◇市△区1-1-1", "□□駅から徒歩2分","03-1234-5678",
        "6月24日㈮25日㈯は当店のポイント2倍進呈です。是非ご利用ください！", 1, false, rand(1..5)],
    ["3", "◇◇花屋", "14", "〒111-1111 〇〇県◇◇市△区1-1-1", "□□駅から徒歩3分","03-1234-5678",
        "▽商店街初夏のスタンプ祭りに参加しています！
        概要：

        ①参加店舗で500円以上（税込）のお買物をして銀ちゃんスタンプ１つゲット！
        ②異なる３店舗で合計３スタンプ集めよう
        ③集めたスタンプの台紙で３００円券として参加店舗にてご利用いただけます
        
        スタンプ捺印期間：5/21（土）～6/5（日）
        ３００円券使用期間：5/21（土）～6/13（月）",
        2, false, rand(1..5)],
    ["4", "☆魚屋", "14", "〒111-1111 〇〇県◇◇市△区1-1-1", "□□駅から徒歩4分", "03-1234-5678", "本日限定！国産うなぎ格安で販売しています！", 3, false, rand(1..5)],
    ["5", "〇×精肉店", "14", "〒111-1111 〇〇県◇◇市△区1-1-1", "□□駅から徒歩5分","03-1234-5678", "毎月肉の日（29日）に特売実施中！", 8, false, rand(1..5)]
].each do |user_id, name, place_id, address, access, telephone_number, introduction, cancelable_days_before, private, shopping_street_id|
    Shop.create!({ 
        user_id: user_id,
        name: name,
        place_id: place_id,
        address: address,
        access: access,
        telephone_number: telephone_number,
        introduction: introduction,
        cancelable_days_before: cancelable_days_before,
        private: private,
        shopping_street_id: shopping_street_id
     })
end

[
    ["1","にんじん", 100, "1袋3本入り", false, 100,],
    ["1","じゃがいも", 298, "1袋5～6個入り", false, 200],
    ["1","きゅうり", 98, "1袋3本入り", false, 100],
    ["1","ブロッコリー", 98, "1株", false, 50],
    ["1","キャベツ", 198, "1玉", false, 100],
    ["4","さんま（2本)", 400, "旬のさんまは塩焼きがおすすめ", false, 20],
    ["4","子持ち生ししゃも", 300, "塩焼きにするとお酒のつまみにおすすめです", false, 40],
    ["4","うなぎのかば焼き（1人前)", 1200, "国産うなぎのかば焼きです。期間限定・数量限定でお安くしています！", false, 10],
    ["4","さば（4切れ）", 400, "みそ煮や塩焼きにどうぞ", false, 100],
    ["4","干物セット（鯛・あじ・イカ）", 1800, "お得な干物セットです", false, 100],
    ["5","国産豚バラ薄切り250g", 420, "宮崎県産まるみ豚です。臭みが少なく豚肉が苦手な人にもおすすめです。", false, 100],
    ["5","近江牛霜降りステーキ肉", 1800, "霜降りの甘みや芳醇な香り、とろけるような口当たりをぜひ一度お試しください。", false, 100],
    ["5","鶏胸肉1枚", 250, "約300gです。ダイエットにもおすすめ", false, 150],
    ["5","合いびき肉（250g）", 500, "国産の牛・豚合いびき肉です。ハンバーグなどにどうぞ", false, 100],
    ["5","牛細切れ200g", 420, "国産牛こま切れ肉です。肉じゃがやカレーにどうぞ。", false, 30]
].each do |shop_id, name, price, description, private, counts|
    Item.create!({ 
        shop_id: shop_id,
        name: name,
        price: price,
        description: description,
        private: private,
        counts: counts
     })
end

# 画像をセット
Item.find(1).image.attach(io: File.open(Rails.root.join('app/assets/images/carrot.jpg')), filename: 'carrot.jpg')
Item.find(2).image.attach(io: File.open(Rails.root.join('app/assets/images/potato.jpg')), filename: 'potato.jpg')
Item.find(3).image.attach(io: File.open(Rails.root.join('app/assets/images/cucumber.jpg')), filename: 'cucumber.jpg')
Item.find(4).image.attach(io: File.open(Rails.root.join('app/assets/images/broccoli.jpg')), filename: 'broccoli.jpg')
Item.find(5).image.attach(io: File.open(Rails.root.join('app/assets/images/cabbage.jpg')), filename: 'cabbage.jpg')
Item.find(6).image.attach(io: File.open(Rails.root.join('app/assets/images/sanma.jpg')), filename: 'sanma.jpg')
Item.find(7).image.attach(io: File.open(Rails.root.join('app/assets/images/komochishishamo.jpg')), filename: 'komochishishamo.jpg')
Item.find(8).image.attach(io: File.open(Rails.root.join('app/assets/images/unagi.jpg')), filename: 'unagi.jpg')
Item.find(9).image.attach(io: File.open(Rails.root.join('app/assets/images/saba.jpg')), filename: 'saba.jpg')
Item.find(10).image.attach(io: File.open(Rails.root.join('app/assets/images/himono.jpg')), filename: 'himono.jpg')
Item.find(11).image.attach(io: File.open(Rails.root.join('app/assets/images/butabara.jpg')), filename: 'butabara.jpg')
Item.find(12).image.attach(io: File.open(Rails.root.join('app/assets/images/steak.jpg')), filename: 'steak.jpg')
Item.find(13).image.attach(io: File.open(Rails.root.join('app/assets/images/torimune.jpg')), filename: 'torimune.jpg')
Item.find(14).image.attach(io: File.open(Rails.root.join('app/assets/images/aibiki.jpg')), filename: 'aibiki.jpg')
Item.find(15).image.attach(io: File.open(Rails.root.join('app/assets/images/gyuniku.jpg')), filename: 'gyuniku.jpg')

Shop.find(1).image.attach(io: File.open(Rails.root.join('app/assets/images/yasai.jpg')), filename: 'yasai.jpg')
Shop.find(2).image.attach(io: File.open(Rails.root.join('app/assets/images/shouten.jpg')), filename: 'shouten.jpg')
Shop.find(3).image.attach(io: File.open(Rails.root.join('app/assets/images/hanaya.jpg')), filename: 'hanaya.jpg')
Shop.find(4).image.attach(io: File.open(Rails.root.join('app/assets/images/sakanaya.jpg')), filename: 'sakanaya.jpg')
Shop.find(5).image.attach(io: File.open(Rails.root.join('app/assets/images/nikuya.jpg')), filename: 'nikuya.jpg')

for i in 6..10
    [
        ["#{i}", "1"],
        ["#{i}", "4"],
        ["#{i}", "5"]
    ].each do |user_id, shop_id|
        Cart.create(user_id: user_id, shop_id: shop_id)
    end
end

yaoya_ids = [1, 4, 7, 10, 13]
sakana_ids = [2, 5, 8, 11, 14]
niku_ids = [3, 6, 9, 12, 15]

yaoya_ids.each do |id|
    [
        ["#{id}", "1"],
        ["#{id}", "2"],
        ["#{id}", "3"],
        ["#{id}", "4"],
        ["#{id}", "5"]
    ].each do |cart_id, item_id|
        CartItem.create(cart_id: cart_id, item_id: item_id)
    end
end

sakana_ids.each do |id|
    [
        ["#{id}", "6"],
        ["#{id}", "7"],
        ["#{id}", "8"],
        ["#{id}", "9"],
        ["#{id}", "10"]
    ].each do |cart_id, item_id|
        CartItem.create(cart_id: cart_id, item_id: item_id)
    end
end

niku_ids.each do |id|
    [
        ["#{id}", "11"],
        ["#{id}", "12"],
        ["#{id}", "13"],
        ["#{id}", "14"],
        ["#{id}", "15"]
    ].each do |cart_id, item_id|
        CartItem.create(cart_id: cart_id, item_id: item_id)
    end
end

memos = ["□□があれば店頭で買いたいです", "特になし", "30分程早めに行けるかもしれないです"]
statuses = [0, 3, 4, 5]

for i in 6..10
    [
        ["#{i}", "1", "山田#{i}太郎", 0, 792, memos.shuffle.first, 0, Time.current + 60*60*3, statuses.shuffle.first ],
        ["#{i}", "4", "山田#{i}太郎", 0, 4100, memos.shuffle.first, 0, Time.current + 60*60*1, statuses.shuffle.first ],
        ["#{i}", "5", "山田#{i}太郎", 0, 3390, memos.shuffle.first, 0, Time.current + 60*60*7, statuses.shuffle.first ]
    ].each do |user_id, shop_id, name, payment_method, total_price, memo, delivery_method, deliver_date, status|
        Order.create!({
            user_id: user_id,
            shop_id: shop_id,
            name: name,
            payment_method: payment_method,
            total_price: total_price,
            memo: memo,
            deliver_date: deliver_date,
            delivery_method: delivery_method,
            status: status
         })
    end
end

yaoya_ids.each do |id|
    [
        ["#{id}", "1"],
        ["#{id}", "2"],
        ["#{id}", "3"],
        ["#{id}", "4"],
        ["#{id}", "5"]
    ].each do |order_id, item_id|
        OrderItem.create(order_id: order_id, item_id: item_id)
    end
end

sakana_ids.each do |id|
    [
        ["#{id}", "6"],
        ["#{id}", "7"],
        ["#{id}", "8"],
        ["#{id}", "9"],
        ["#{id}", "10"]
    ].each do |order_id, item_id|
        OrderItem.create(order_id: order_id, item_id: item_id)
    end
end

niku_ids.each do |id|
    [
        ["#{id}", "11"],
        ["#{id}", "12"],
        ["#{id}", "13"],
        ["#{id}", "14"],
        ["#{id}", "15"]
    ].each do |order_id, item_id|
        OrderItem.create(order_id: order_id, item_id: item_id)
    end
end

[
    ["1", "customer", "今度じゃがいもを10kg買いたいのですが可能ですか？"],
    ["1", "shop", "お日にちを教えていただければご用意いたします！"],
    ["4", "customer", "この間購入したブロッコリーが黄色くなってきました。食べても大丈夫ですか？"],
    ["4", "shop", "黄色くなるのはブロッコリーのつぼみが膨らんできているためです。腐っているわけではないので美味しく食べていただけますが、腐りやすいので早めにお召し上がりください。"],
    ["2", "customer", "来週息子の誕生日に刺身の盛り合わせを頼みたいです。"],
    ["2", "shop", "お誕生日おめでとうございます。お召し上がりになる人数と日にちを教えてください！好きなお刺身もあれば多めにお入れいたします！"]
].each do |order_id, sender, comments|
    Message.create({ 
        order_id: order_id,
        sender: sender,
        comments: comments
     })
end

Order.all.each do |order|
    Notification.create(sender_id: order.user.id, receiver_id: order.shop.user.id, order_id: order.id, action: :ordered)
end

Message.all.each do |message|
    case message.sender
    when 'customer'
        Notification.create!(sender_id: message.order.user.id, receiver_id: message.order.shop.user.id, order_id: message.order.id, action: :message)
    when 'shop'
        Notification.create!(sender_id: message.order.shop.user.id, receiver_id: message.order.user.id, order_id: message.order.id, action: :message)
    end
end

Shop.find(1).sale_items.create!(item_id: 1)
Shop.find(1).sale_items.create!(item_id: 2)
Shop.find(1).sale_items.create!(item_id: 3)
Shop.find(1).sale_items.create!(item_id: 4)
# Shop.find(1).sale_items.create!(item_id: 5)
Shop.find(4).sale_items.create!(item_id: 6)
Shop.find(4).sale_items.create!(item_id: 7)
Shop.find(4).sale_items.create!(item_id: 8)
Shop.find(4).sale_items.create!(item_id: 9)
# Shop.find(4).sale_items.create!(item_id: 10)
Shop.find(5).sale_items.create!(item_id: 11)
Shop.find(5).sale_items.create!(item_id: 12)
Shop.find(5).sale_items.create!(item_id: 13)
Shop.find(5).sale_items.create!(item_id: 14)
# Shop.find(5).sale_items.create!(item_id: 15)
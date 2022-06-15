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
    ["関東", "埼玉県", "流山・三郷・野田"]
].each do |region, prefecture, area|
    Place.create({
        region: region,
        prefecture: prefecture,
        area: area
    })
end

[
    ["testshop", "testshop@test.com", "password", "password"],
    ["testshop", "testshop2@test.com", "password", "password"],
    ["testshop", "testshop3@test.com", "password", "password"],
    ["testshop", "testshop4@test.com", "password", "password"],
    ["testshop", "testshop5@test.com", "password", "password"],
    ["testuser", "testuser@test.com", "password", "password"],
    ["testuser2", "testuser@test.com", "password", "password"],
    ["testuser3", "testuser@test.com", "password", "password"],
    ["testuser4", "testuser@test.com", "password", "password"],
    ["testuser5", "testuser@test.com", "password", "password"],
].each do |name, email, password, password_confirmation|
    User.create({ 
        name: name,
        email: email,
        password: password,
        password_confirmation: password_confirmation
     })
end

[
    ["1", "shop", "1", "shopaddress", "shopaccess", "shopintrooooooooooooooooooo", 0, false],
    ["1", "shop2", "2", "shopaddress2", "shopaccess2", "shopintrooooooooooooooooooo", 1, false],
    ["1", "shop3", "3", "shopaddress3", "shopaccess3", "shopintrooooooooooooooooooo", 2, false],
    ["1", "shop4", "4", "shopaddress4", "shopaccess4", "shopintrooooooooooooooooooo", 3, false],
    ["1", "shop5", "5", "shopaddress5", "shopaccess5", "shopintrooooooooooooooooooo", 8, false]
].each do |user_id, name, place_id, address, access, introduction, cancelable_days_before, private|
    Shop.create({ 
        user_id: user_id,
        name: name,
        place_id: place_id,
        address: address,
        access: access,
        introduction: introduction,
        cancelable_days_before: cancelable_days_before,
        private: private
     })
end

[
    ["1","item", 100, "descriptionnnnnnnnnnnnnnnnnnnnnn", false, 100],
    ["1","item2", 10000, "descriptionnnnnnnnnnnnnnnnnnnnnn", false, 100],
    ["1","item3", 1000, "descriptionnnnnnnnnnnnnnnnnnnnnn", false, 100],
    ["1","item4", 100, "descriptionnnnnnnnnnnnnnnnnnnnnn", false, 100],
    ["1","item5", 100, "descriptionnnnnnnnnnnnnnnnnnnnnn", false, 100],
    ["2","item", 100, "descriptionnnnnnnnnnnnnnnnnnnnnn", false, 100],
    ["2","item2", 100, "descriptionnnnnnnnnnnnnnnnnnnnnn", false, 100],
    ["2","item3", 100, "descriptionnnnnnnnnnnnnnnnnnnnnn", false, 100],
    ["2","item4", 100, "descriptionnnnnnnnnnnnnnnnnnnnnn", false, 100],
    ["2","item5", 100, "descriptionnnnnnnnnnnnnnnnnnnnnn", false, 100]
].each do |shop_id, name, price, description, private, counts|
    Item.create({ 
        shop_id: shop_id,
        name: name,
        price: price,
        description: description,
        private: private,
        counts: counts
     })
end
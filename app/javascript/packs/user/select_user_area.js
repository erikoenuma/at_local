var places = $('#placeData').data('place');
var shopping_streets = $('#shoppingStreetData').data('shopping-street');

function showPrefecture(region, form) {
    const prefectures = places.filter(place => place.region == region);
    var dropdownMenus = prefectures.map(place => `<option value = ${place.prefecture}>${place.prefecture}</option>`);
    // 重複を避けて県のdropdownに反映して表示させる
    form.innerHTML = Array.from(new Set(dropdownMenus)).join('');
    form.hidden = false;
}

function showArea(prefecture, form) {
    const areas = places.filter(place => place.prefecture == prefecture);
    var dropdownMenus = areas.map(place => `<option value = ${place.id}>${place.area}</option>`);
    form.innerHTML = dropdownMenus.join('');
    form.hidden = false;
}

function showShoppingStreet(place_id, form) {
    const streets = shopping_streets.filter(street => street.place_id == place_id )
    const dropdownMenus = streets.map(street => `<option value = ${street.id}>${street.name}</option>`);

    if (streets.length > 0) {
        form.hidden = false;
        // nullを先頭に入れる
        dropdownMenus.unshift('<option value ="">商店街を選択（任意）</option>');
        form.innerHTML = dropdownMenus.join('');
    }
}

$('.region').change(function(e) {
    // フォームを取得
  var regionForm = e.target.form.user_region;
  var prefectureForm = e.target.form.user_prefecture;
  var areaForm = e.target.form.user_place_id;

  // 「地域を選択」が表示されている時は他のフォームは隠す
  if (regionForm.value == '') {
    prefectureForm.value = '';
    prefectureForm.hidden = true;
    areaForm.value = '';
    areaForm.hidden = true;
    return
  }
  
  // 選択された地域の県を表示
  showPrefecture(regionForm.value, prefectureForm);

  // 最初の県のエリアを表示
  const firstPlace = places.filter(place => place.region == regionForm.value)[0];
  showArea(firstPlace.prefecture, areaForm);
  
})

$('.prefecture').change(function(e) {
  const selectedPrefecture = e.target.form.user_prefecture.value;
  var areaForm = e.target.form.user_place_id;
  showArea(selectedPrefecture, areaForm);
})
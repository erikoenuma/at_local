// type="file"のinputタグを指定
// onChange()は中身が変わった時に呼ばれる
$('input[type=file]').change(function (e) {

    if (e.target.files.length > 0) {
        // $(this)はイベントが発生した要素
        // 親要素のformのsubmitを行う
        $(this).parents('form').submit();
    }
});

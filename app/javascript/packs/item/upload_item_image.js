// 画像プレビューのHTML
function imageHTML(image) {
    var html = 
    `
    <img src="${image}#, alt="preview" class="item-image">
    `
    return html;
}

$(".upload-image").change(function(){
    var reader = new FileReader();
    reader.readAsDataURL(this.files[0])

    // 読み込みが終わったら実行される
    reader.onload = function(){
        var image = this.result;
        // HTMLを作成
        var html = imageHTML(image);
        
        // 画像が何も表示されていない時
        if ($(".preview-image .item-image").length == 0) {
            // HTMLを追加
            $(".preview-image").prepend(html);
        }
        else {
            // 画像のパスを差し替え
            $('.preview-image .item-image').attr({ src: image });
        }
    }
})
// 数字の入力フォームを指定
// フォームの数字が変更されたときにsubmitする(updateする)
$('input[type=number]').change(function(e){
    
    $(this).parents('form').submit();
});
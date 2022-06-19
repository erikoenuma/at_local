// webpackerを使うとき、モジュールの中で宣言された関数はモジュールの外から関数を呼び出せないため、
// ビューからはJavaScriptで宣言した関数は呼び出せない

// windowを使ってグローバル関数を宣言すると呼び出せる
window.add = function(id, number) {
    var stock = document.getElementById(`stock${id}`);
    // 数を足して
    var result = Number(stock.value) + number;
    // 画面に反映する
    stock.value = result;
};
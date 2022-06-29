// 配送先を選択/自由に記入させる時にフォームを出し分けする

textField = document.getElementById("address_text");

document.getElementById("address_select").onchange = function(e) {
  if (e.target.value != "") {
    textField.hidden = true;
    textField.value = e.target.value;
  }
  else {
    textField.hidden = false;
    textField.value = "";
  }
};
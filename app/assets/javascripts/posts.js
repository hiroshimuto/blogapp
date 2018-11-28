$(function(){
// ランダムタイトル機能
  var btn = document.getElementById("btn");
  console.log(gon.title);

  $(btn).on("click", function(){
    var title = gon.title;
    var n = Math.floor(Math.random()* title.length);
    $("#random-title").text(title[n]);
    $("#input").val(title[n]);
  });

  btn.addEventListener("mousedown",function(){
    this.className = "pushed";
  });

  btn.addEventListener("mouseup",function(){
    this.className = "";
  });

// 文字数カウント機能
  $("#textarea1").on("keyup", function(){
    var input = this.value.length;
    $("#text-count").text(input);
  });


});

$(function(){
  var btn = document.getElementById("btn");

  $(btn).on("click", function(){
    var title = ["今日頑張ったこと", "今日嬉しかったこと", "今日のニュースについて", "明日やりたいこと"];
    var n = Math.floor(Math.random()* title.length);
    $("#random-title").text(title[n]);
    $("#input").val(title[n]);
  });

    // var input =  $(".icon_prefix2").val();
    // console.log(input);

  btn.addEventListener("mousedown",function(){
    this.className = "pushed";
  });

  btn.addEventListener("mouseup",function(){
    this.className = "";
  });
});

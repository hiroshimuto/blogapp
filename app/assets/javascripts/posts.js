$(function(){
  var btn = document.getElementById("btn");
  console.log(gon.title);

  $(btn).on("click", function(){
    var title = gon.title;
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

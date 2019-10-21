$(document).ready(function(){
    $("video").on("loadstart", function(){
      $(".abs-over").css("background","rgba(225,225,225,0.45)");
    });
});

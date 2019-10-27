$(document).ready(function(){
  $(".cats").click(function(){
    $(this).toggleClass("catsdp");
  });
  $("#search-table").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $(".diary-posts tbody tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
  $current_active = $('.compass');
  $(".side-nav-user ul li").click(function(){
    if($(this).attr("data-trigger") != "" && $(this).attr("data-trigger") != null){
      $current_active.removeClass("section-active");
      $current_active = $("." + $(this).attr("data-trigger"));
      $($current_active).addClass("section-active");
      $('.active-link').removeClass('active-link');
      $(this).addClass("active-link");
      console.log($(this).attr("data-trigger"));
    }
  });
  $(window).resize(function(){
    $(".main-userlg").width(($(window).width() - $('.side-nav-user').width()) + "px");
  });
  $(window).resize();
  new ResizeSensor($('.side-nav-user'), function(){
      $(window).resize();
  });
  $toggled = false;
  $(".side-nav-user .logo .toggle-nav").click(function(){
    if(!$toggled){
      $(this).html('<i class="fas fa-arrow-right">');
      $(".side-nav-user").css("--nav-side-width","70px");
      $(".side-nav-user ul .nav-links-expanded").hide();
      $(".tools-bars-dp").css("left","70px");
      $toggled = true;
    }
    else{
      $(this).html('<i class="fas fa-arrow-left"></i> Collapse');
      $(".side-nav-user").css("--nav-side-width","200px");
      $(".side-nav-user ul .nav-links-expanded").show();
      $(".tools-bars-dp").css("left","200px");
      $toggled = false;
    }
  });
});

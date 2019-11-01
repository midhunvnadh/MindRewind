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
      $('.pagename span').text($current_active.find('.pageIdTrig').text());
      $($current_active).addClass("section-active");
      $('.active-link').removeClass('active-link');
      $(this).addClass("active-link");
      console.log($(this).attr("data-trigger"));
    }
    else if($(this).attr("data-trigger") == null){
      if($toggled == true)
        $(".side-nav-user .logo .toggle-nav").click();
    }
  });
  $toggled = false;
  $(".tools-bars-dp .logo .toggle-nav").click(function(){
    if(!$toggled){
      $(".side-nav-user").css("--nav-side-width","70px");
      $(".side-nav-user ul .nav-links-expanded").hide();
      $toggled = true;
    }
    else{
      $(".side-nav-user").css("--nav-side-width","234px");
      $(".side-nav-user ul .nav-links-expanded").show(500);
      $toggled = false;
    }
  });
});

function newAction(action){
  if(action  == "table_starring"){
    $(function(){
      $("tr td:first-child:contains('yes')").html("<i class = 'fas fa-star stared'></i>");
      $("tr td:first-child:contains('no')").html("<i class = 'fas fa-star'></i>");
      $("td i").click(function(){
        $(this).toggleClass("stared");
        return true;
      });
    });
  }
  else{
    return false;
  }
}
loaderShw = false;
function loader() {
  if(loaderShw){
    $(".loader .moves").hide();
    loaderShw = false
  }
  else{
    $(".loader .moves").show();
    loaderShw = true;
  }
  return true;
}
function loadSection(secname) {
  switch (secname){
    case "diaryposts":
      loader();
      $data = "";
      $.getJSON("../assets/sample-json.php",
      function (json) {
          var tr;
          for (var i = 0; i < json.length; i++) {
              tr = "<tr>";
              tr += ("<td>" + json[i].starred + "</td>") + ("<td>" + json[i].id + "</td>") + ("<td>" + json[i].title + "</td>")+("<td>" + json[i].date + "</td>") + ("</tr>");
              $data += '' + tr;
          }
          if($('.JSON_data').append($data)){
            loader();
            newAction("table_starring");
          }
      });
      break;
  }
}
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
    if(!$current_active.is($("." + $(this).attr("data-trigger"))) && $(this).attr("data-trigger") != "" && $(this).attr("data-trigger") != null){
      console.log($("." + $(this).attr("data-trigger")));
      console.log($('div.diaryposts.section-active'));
      $current_active.removeClass("section-active");
      $current_active = $("." + $(this).attr("data-trigger"));
      $('.pagename span').text($current_active.find('.pageIdTrig').text());
      $($current_active).addClass("section-active");
      $('.active-link').removeClass('active-link');
      $(this).addClass("active-link");
      loadSection($(this).attr("data-trigger"));
    }
    else if($(this).attr("data-trigger") == null){

    }
  });
  $toggled = false;
  $(".tools-bars-dp .logo .toggle-nav").click(function(){
    if(!$toggled){
      $(".side-nav-user").toggleClass("colps");
      $toggled = true;
    }
    else{
      $(".side-nav-user").toggleClass("colps");
      $toggled = false;
    }
  });
});
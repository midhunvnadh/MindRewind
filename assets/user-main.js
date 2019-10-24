$(document).ready(function(){
  $(".cats").click(function(){
    $(this).toggleClass("catsdp");
  });
  $(document).ready(function(){
  $("#search-table").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $(".diary-posts tbody tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
});

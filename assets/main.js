var returnDay = (arg) => {
  $date = new Date(arg);
  return getTheDay($date);
}
function getTheDay(date){
  $a = date.getDay();
  if($a == 1){
    $theDay = "Monday";
  }else if($a == 2){
    $theDay = "Tuesday";
  }else if($a == 3){
    $theDay = "Wednesday";
  }else if($a == 4){
    $theDay = "Thursday";
  }else if($a == 5){
    $theDay = "Friday";
  }else if($a == 6){
    $theDay = "Saturday";
  }else if($a == 0){
    $theDay = "Sunday";
  }
  return $theDay;
}
$(document).ready(function(){
    $("video").on("loadstart", function(){
      $(".abs-over").css("background","rgba(225,225,225,0.10)");
    });
    Number.prototype.AddZero= function(b,c){
        var  l= (String(b|| 10).length - String(this).length)+1;
        return l> 0? new Array(l).join(c|| '0')+this : this;
     }
     var d = new Date(),
       localDateTime= [(d.getFullYear()).AddZero(),(d.getMonth()+1).AddZero(),
                d.getDate()].join('-') +'T' +
               [d.getHours().AddZero(),
                d.getMinutes().AddZero()].join(':');
       var elem=document.getElementById("datePicker");
       elem.value = localDateTime;
      $('.day').text(getTheDay(new Date()));
      $("#datePicker").on('input',function(){
        $('.day').text(returnDay($('#datePicker').val()));
      });
});

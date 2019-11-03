<?php
  $conn = mysqli_connect("localhost","root","","mindrewind");
  if($conn){
    $query = mysqli_query($conn,"SELECT * FROM user_admin where res_type = 'diary'");
    $ajax_str = "[";
    if(mysqli_num_rows($query) > 0){
      while($rec = mysqli_fetch_assoc($query)){
        $ajax_str .= $rec['value'] . ",";
      }
    }
    else{
      "<h1>No Records, Bitch !</h1>";
    }
    $ajax_str = substr_replace($ajax_str ,"",-1);
    echo $ajax_str .= "]";
  }
  else{
    echo "<h1>Damn Connection</h1>";
  }
  /*
  $json = [
        "Eloquent JavaScript, Second Edition",
        "Learning JavaScript Design Patterns",
        "Speaking JavaScript",
        "Programming JavaScript Applications",
        "Understanding ECMAScript 6",
        "You Dont Know JS",
        "Git Pocket Guide",
        "Designing Evolvable Web APIs with ASP.NET"
  ];
  for($i = 0;$i < 8;$i++){
    if($i % 2 == 0){
      $sm = "yes";
    }
    else{
      $sm = "no";
    }
    $value = '{
      "starred": "' . $sm . '",
      "id": "' . $i . '",
      "title": "' . $json[$i] . '",
      "date": "Wednesday,October 27"
    }';
    
    echo $sql = "INSERT INTO user_admin (`res_type`,`value`) VALUES ('diary','" . $value . "');<br/>";
    
  }
  */
?>
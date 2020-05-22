<!DOCTYPE html>
<html>
  <head>
    <title>Zadanie</title>
    <meta charset="UTF-8" />
    <link href="style.css" rel="stylesheet" />
  </head>
  <body>
    <div class="container">
      <div class="item top">
         <div class="header"> <a href="../index.php"> <img src="F1.png" height="100px"></div></a>
      </div>
      <div class="item left">
       
      </div>
	  
      <div class="item mid">
		
<?php
    $servername = "127.0.0.1";
    $username = "root";
    $password = "";
    $dbname = "wojdalski";

    $conn = new mysqli($servername, $username, $password, $dbname);

    $result = $conn->query("SELECT * FROM tory");

    echo("<table border='5'>");
    echo("<tr>
    <th>Nazwa</th>
	<th>Lokalizacja</>
    <th>Długość Toru</th>
	<th>Liczba okrążeń</th>
    </tr>");
    while( $wiersz = $result->fetch_assoc() ) {
        echo("<tr>");
        echo("<td>".$wiersz['Nazwa']."</td>"."<td>".$wiersz['Lokalizacja']."</td>"."<td>".$wiersz['Długość Toru']."</td>"."<td>".$wiersz['Liczba okrążeń']."</td>");
        echo("</tr>");
    }
    echo("</table>");
?>
		
		
      </div>
	  

      <div class="item right">
        <a class="text2" href="../drivers/index.php">KIEROWCY</a> <br/>
      
    
      </div>
      <div class="leftv2">
        <a class="text2" href="../teams/index.php">ZESPOLY</a> <br/>
        
      </div>
      <div class="item left">
        <a>TORY</a> <br/>
      </div>
	  
	</div>
  </body>
</html>
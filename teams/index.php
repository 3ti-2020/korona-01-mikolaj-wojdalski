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

    $result = $conn->query("SELECT * FROM zespoły");

    echo("<table border='6'>");
    echo("<tr>
    <th>Nazwa</th>
	<th>Baza</>
    <th>Silnik</th>
	<th>Rok dołączenia</th>
    </tr>");
    while( $wiersz = $result->fetch_assoc() ) {
        echo("<tr>");
        echo("<td>".$wiersz['Nazwa']."</td>"."<td>".$wiersz['Baza']."</td>"."<td>".$wiersz['Silnik']."</td>"."<td>".$wiersz['Rok dołączenia']."</td>");
        echo("</tr>");
    }
    echo("</table>");
?>
		
		
      </div>
	  

      <div class="item right">
        <a class="text2" href="../drivers/index.php">KIEROWCY</a> <br/>
      
    
      </div>
      <div class="leftv2">
        <a> ZESPOLY </a>
        
      </div>
      <div class="item left">
        <a class="text2" href="../tracks/index.php">TORY</a> <br/>
      </div>
	  
	</div>
  </body>
</html>
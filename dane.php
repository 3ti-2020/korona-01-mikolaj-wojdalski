<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
</head>
<body>
<?php
    $servername = "127.0.0.1";
    $username = "root";
    $password = "";
    $dbname = "wojdalski";

    $conn = new mysqli($servername, $username, $password, $dbname);

    $result = $conn->query("SELECT * FROM zespoły");

    echo("<table border='15'>");
    echo("<tr>
    <th>Nazwa</th>
	<th>Baza</>
    <th>Silnik</th>
    </tr>");
    while( $wiersz = $result->fetch_assoc() ) {
        echo("<tr>");
        echo("<td>".$wiersz['Nazwa']."</td>"."<td>".$wiersz['Baza']."</td>"."<td>".$wiersz['Silnik']."</td>");
        echo("</tr>");
    }
    echo("</table>");
?>
</body>
</html>
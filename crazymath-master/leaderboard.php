<?php
include 'dbconfig.php';

//koneksi ke db

$db =mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
$query = "SELECT * FROM crazymath ORDER BY score LIMIT 0,10";
$result =mysqli_query ($db,$query);
?>


<html>
<head>
	<title>CrazyMath</title>
</head>
<body>
	<h1>CRAZY MATH</h1>
	<table>
		<tr><th>Username</th><th>Score</th><th>playtime</th></tr>
	<?php
	while($data =mysqli_fetch_array($result)){

	echo "<tr>";
	echo "<td><a href='profile.php?id='>".$data['id']."".$data['username']."</a></td>";
	echo "<td>".$data['username']."</td>";
	echo "<td>".$data['score']."</td>";
	echo "<td>".$data['playtime']."</td>";
	echo "</tr>";
	}

		?>
</table>
</body>
</html>

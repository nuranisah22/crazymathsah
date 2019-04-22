<?php
	// mulai session
	session_start();
	// cek keberadaan cookie 'username'
	// jika ada, maka status = true. jika tak ada, maka status = false
	if (isset($_COOKIE['username'])){
		$status = true;
	} else {
		$status = false;
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Game CrazyMath</title>
</head>
<body>
	<h1>Crazy Math</h1>
	<form enctype="multipart/form-data" method="post" action="action.php">
		<?php
			// jika status = false (cookie username tak ada), maka tampilkan form input nama
			// dan tombol submit dg nama 'submit1'
			if ($status == false){
		?>
			Masukkan Nama Anda: <input type="text" name="username">	
			</br>
			</br>
            Upload Foto Anda: <input  type="file" name="userfile"><br>
			</br>
			</br>
			</br>
			<input type="submit" name="submit1" value="Start !!">
		<?php		
			}else {
			// jika status = true (cookie username ada), maka tampilkan username
			// tanggal terakhir kali main, dan score. Data ini diambil dari cookie
			// serta tampilkan tombol submit dg nama 'submit2'	
			echo "<p>Welcome back, ".$_COOKIE['username']."</p>";
			echo "<p>Sebelumnya, terakhir kali Anda main game ini tanggal ".$_COOKIE['lasttime']." dengan score ".$_COOKIE['score']."</p>";	
			
		?>
			<input type="submit" name="submit2" value="Start !!">
			</br>
			</br>
			<input type="submit" name="submit0" value="Bukan Saya?">
			</br>
	</form>
	<?php
		}
	?>
	<?php
		// nilai inisialisasi lives dan score (simpan ke session)
		$_SESSION['lives'] = 1;
		$_SESSION['score'] = 0;
	?>
	
</body>
</html>
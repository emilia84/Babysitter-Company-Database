<!doctype html>
<html>
<head>
	<title>Connect to a Database</title>
	<link rel="stylesheet" href="../css/style.css" />
</head>

<body>

	<?php
	$servername = "localhost";   // means the database server is running on your own cmputer and not on a remote computer on a network or on the Internet.
	$username = "root";          // this is the default administrator account to access the DBMS
	$password = "";			   // the password is empty by default, when you install WAMP

	/* Try MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password).
If the connection was tried and it was successful the code between braces after try is executed, if any error happened while running the code in try-block, 
the code in catch-block is executed. */
	try {
		$conn = new PDO("mysql:host=$servername", $username, $password);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		echo "<p style='color:green'>Connection Was Successful</p>";    // generates HTML code to display success message
	} catch (PDOException $err) {
		echo "<p style='color:red'>Connection Failed: " . $err->getMessage() . "</p>\r\n";   // displays message for the error that has happened
	}

	unset($conn);  // Always close the connection, when not needed any more.

	echo "<a href='../index.html'>Back to the Homepage</a>";
	?>

</body>

</html>
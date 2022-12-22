<!doctype html>
<html>
<head>
    <title>Display Records of a table</title>
    <link rel="stylesheet" href="../css/style.css" />
</head>

<body>

    <?php
    $servername = "localhost";
    $dbname = "EmiliaDB";
    $username = "root";
    $password = "";

    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        echo "<p style='color:green'>Connection Was Successful</p>";
    } catch (PDOException $err) {
        echo "<p style='color:red'> Connection Failed: " . $err->getMessage() . "</p>\r\n";
    }

    try {
        $sql = "SELECT  Fname, Lname, Emails, Address, Marital_status, Phones, Emergency_contact FROM Parent";
        $stmnt = $conn->prepare($sql);    // read about prepared statement here: https://www.w3schools.com/php/php_mysql_prepared_statements.asp

        $stmnt->execute();

        $row = $stmnt->fetch();  // fetches the first row of the table
        if ($row) {      // if there is any result from the query
            echo '<table>';
            echo '<tr> <th>First Name</th> <th>Last Name</th> <th>Email</th> <th>Address</th> <th>Marital Status</th><th>Phone</th><th>Emergency Contact</th> </tr>';
            do {
                echo "<tr><td>$row[Fname]</td><td>$row[Lname]</td><td>$row[Emails]</td><td>$row[Address]</td><td>$row[Marital_status]</td><td>$row[Phones]</td><td>$row[Emergency_contact]</td></tr>";
            } while ($row = $stmnt->fetch());     // fetches another row from the query result, until we reach to the end of the result
            echo '</table>';
        } else {
            echo "<p> No Record Found!</p>";
        }
    } catch (PDOException $err) {
        echo "<p style='color:red'>Record Retrieval Failed: " . $err->getMessage() . "</p>\r\n";
    }
    // Close the connection
    unset($conn);

    echo "<a href='../index.html'>Back to the Homepage</a>";

    ?>
</body>

</html>
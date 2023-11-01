<?php
// Database connection settings
$host = 'localhost'; // Your MySQL host
$db = 'pro'; // Your database name
$user = 'root'; // Your database username
$pass = ''; // Your database password

// Establish the database connection
$mysqli = new mysqli($host, $user, $pass, $db);

// Check the connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}

// Process the form data
// Process the form data
if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['password']) && isset($_POST['cfmpassword']) && isset($_POST['date']) && isset($_POST['degree']) && isset($_POST['cofee'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    $cfmpassword = $_POST['cfmpassword'];
    $date = $_POST['date'];
    $degrees = implode(', ', $_POST['degree']); // Combine multiple degrees with a comma
    $cofeem = $_POST['cofee'];

    // Check if the passwords match
    if ($_POST['password'] === $_POST['cfmpassword']) {
        // Insert the data into the database
        $query = "INSERT INTO doc (name, email, password, cfmpassword, date, degree, cofee) VALUES (?, ?, ?, ?, ?, ?, ?)";

        $stmt = $mysqli->prepare($query);
        $stmt->bind_param("sssssss", $name, $email, $password, $cfmpassword, $date, $degrees, $cofeem);

        if ($stmt->execute()) {
            echo "Registration successful!";
        } else {
            echo "Error: " . $stmt->error;
        }

        $stmt->close();
    } else {
        echo "Error: Password and Confirm Password do not match.";
    }
}


$mysqli->close();
?>

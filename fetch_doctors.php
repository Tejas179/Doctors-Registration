<?php
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

// Set the number of entries to fetch
$perPage = 10;

// Get the page number from the request
$page = isset($_GET['page']) && is_numeric($_GET['page']) ? $_GET['page'] : 1;

// Calculate the offset
$offset = ($page - 1) * $perPage;

// Fetch data from the 'doc' table with a limit and offset
$query = "SELECT * FROM doc LIMIT $perPage OFFSET $offset";
$result = $mysqli->query($query);

if ($result) {
    $doctors = $result->fetch_all(MYSQLI_ASSOC);
    echo json_encode($doctors);
} else {
    echo json_encode(array('error' => 'Failed to fetch data'));
}

$mysqli->close();
?>

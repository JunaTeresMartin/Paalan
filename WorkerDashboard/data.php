<?php
// Connect to the database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "paalan";

$conn = new mysqli($servername, $username, $password, $dbname);


// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$boysCount = 0;
$girlsCount = 0;

// Fetch data from the table
$sql = "SELECT child_name, height, weight FROM child_details";
$result = $conn->query($sql);




// Create arrays to store data
$names = array();
$heights = array();
$weights = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $names[] = $row["child_name"];
        $heights[] = $row["height"];
        $weights[] = $row["weight"];
    }
} else {
    echo "No data found";
}

//gender data
$sql2 = "SELECT gender, COUNT(*) AS count FROM child_details GROUP BY gender";
$result2 = mysqli_query($conn, $sql2);

while ($row2 = mysqli_fetch_assoc($result2)) {
    if ($row2['gender'] === 'Boy') {
        $boysCount = $row2['count'];
    } elseif ($row2['gender'] === 'Girl') {
        $girlsCount = $row2['count'];
    }
}


// Close the database connection
$conn->close();

// Return the data as JSON
$data = array(
    "names" => $names,
    "heights" => $heights,
    "weights" => $weights,
    "boysCount" => $boysCount,
    "girlsCount" => $girlsCount
);

header('Content-Type: application/json');
echo json_encode($data);
?>

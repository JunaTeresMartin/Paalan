<?php
include 'connect.php';

if (isset($_GET['childdeleteid'])) {
    $id = $_GET['childdeleteid'];

    // First, delete the related records from the child table (height_history)
    $sql_delete_height_history = "DELETE FROM height_history WHERE child_id=$id";
    $result_delete_height_history = mysqli_query($con, $sql_delete_height_history);

    // Next, delete the related records from the child table (weight_history)
    $sql_delete_weight_history = "DELETE FROM weight_history WHERE child_id=$id";
    $result_delete_weight_history = mysqli_query($con, $sql_delete_weight_history);

    // Next, delete the related records from any other child tables as needed...

    // After deleting all the related records from the child tables, proceed to delete the record from the parent table (child_details)
    $sql_delete_parent = "DELETE FROM child_details WHERE child_id=$id";
    $result_delete_parent = mysqli_query($con, $sql_delete_parent);

    if ($result_delete_parent) {
        // If the parent record is successfully deleted, redirect to the child_update.php page
        header('location: child_update.php');
    } else {
        // If there's an error while deleting the parent record, display the error message
        die(mysqli_error($con));
    }
}
?>

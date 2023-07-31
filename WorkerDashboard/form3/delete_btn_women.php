<?php
include 'connect.php';

if (isset($_GET['deleteid'])) {
    $id = $_GET['deleteid'];

    // First, delete the related records from the child table (women_pregnancy_details)
    $sql_delete_pregnancy = "DELETE FROM women_pregnancy_details WHERE woman_id=$id";
    $result_delete_pregnancy = mysqli_query($con, $sql_delete_pregnancy);

    // Next, delete the related records from the child table (women_medical_history_details)
    $sql_delete_medical_history = "DELETE FROM women_medical_history_details WHERE woman_id=$id";
    $result_delete_medical_history = mysqli_query($con, $sql_delete_medical_history);

    // Then, delete the related records from any other child tables as needed...

    // After deleting all the related records from the child tables, proceed to delete the record from the parent table (women_personal_details)
    $sql_delete_parent = "DELETE FROM women_personal_details WHERE woman_id=$id";
    $result_delete_parent = mysqli_query($con, $sql_delete_parent);

    if ($result_delete_parent) {
        // If the parent record is successfully deleted, redirect to the women_update.php page
        header('location: women_update.php');
    } else {
        // If there's an error while deleting the parent record, display the error message
        die(mysqli_error($con));
    }
}
?>


<?php
$host = "localhost";
$user = "root";
$password = "";
$db = "paalan";

$conn = mysqli_connect($host, $user, $password, $db);

if ($conn == false) {
    die("connection error");
}

// Initialize the error message variable
$error_message = "";

// Process the form data when the form is submitted
if (isset($_POST['submit'])) {
    // Retrieve the form data
    $child_name = $_POST['childName'];
    $mother_id = $_POST['mother_id'];
    $child_age = $_POST['childAge'];
    $child_dob = $_POST['childDOB'];
    $gender = $_POST['gender'];
    $child_mp = $_POST['childMP'];
    $child_blockNumber = $_POST['childBlockNo'];
    $child_city = $_POST['childCity'];
    $child_district = $_POST['childDistrict'];
    $father_name = $_POST['childFName'];
    $father_occupation = $_POST['childFO'];
    $mother_name = $_POST['childMName'];
    $mother_occupation = $_POST['childMO'];
    $no_of_family_members = $_POST['familyMembersNo'];
    $annual_income = $_POST['annualIncome'];
    // $if_child_medical_issues = $_POST['contact'];
    $medical_issue_details = $_POST['medical_issue_details'];
    $child_guardian_phone_no = $_POST['Guardian_no'];

    // Check if the entered mother_id exists in the woman_personal_details table
    $check_sql = "SELECT woman_id FROM women_personal_details WHERE woman_id = '$mother_id'";
    $check_result = mysqli_query($conn, $check_sql);

    if (mysqli_num_rows($check_result) == 0) {
        // If the mother_id does not exist, set the error message
        $error_message = "The input mother id does not exist";
    } else {
        // If the mother_id exists, proceed with the form submission

        // SQL query to insert the form data into the table
        $sql = "INSERT INTO child_details (woman_id, child_name, gender, child_age, child_dob, child_mp, child_blockNumber, child_city, child_district, father_name, father_occupation, mother_name, mother_occupation, no_of_family_members, annual_income, medical_issue_details, child_guardian_phone_no)
                VALUES ('$mother_id','$child_name', '$gender','$child_age', '$child_dob', '$child_mp', '$child_blockNumber', '$child_city', '$child_district', '$father_name', '$father_occupation', '$mother_name', '$mother_occupation', '$no_of_family_members', '$annual_income', '$medical_issue_details', '$child_guardian_phone_no')";
        $result = mysqli_query($conn, $sql);

        if ($result) {
            // Optional success message, you can customize this as needed
            $error_message = "Child details registered successfully!";
        } else {
            $error_message = "Failed to register child details.";
        }
    }
}

// Close the database connection
mysqli_close($conn);
?>
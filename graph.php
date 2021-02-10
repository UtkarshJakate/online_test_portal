<?php
include_once 'dbConnection.php';

$result=mysqli_query($con,"SELECT * FROM rank  ORDER BY score DESC " )or die('Error223');

$data = array();
foreach ($result as $row) {
    $data[] = $row;
}

echo json_encode($data);

$result ->close()
?>
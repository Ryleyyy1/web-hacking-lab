<?php
// Example vulnerable query (for study only)
$id = $_GET['id'];
$query = "SELECT * FROM users WHERE id = $id";
?>

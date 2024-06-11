<?php
$conn = new mysqli('localhost', 'root', '', 'cyber_security_news');

if ($conn->connect_error) {
    die("Prisijungimo klaida: " . $conn->connect_error);
}

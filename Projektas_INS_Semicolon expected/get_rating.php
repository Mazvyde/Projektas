<?php
session_start();
require_once 'db.php';

$articleId = isset($_GET['article_id']) ? intval($_GET['article_id']) : 0;

if ($articleId) {
    $result = $conn->query("SELECT AVG(rating) AS average_rating FROM Ratings WHERE article_id = $articleId");
    $row = $result->fetch_assoc();
    echo json_encode(['average_rating' => round($row['average_rating'], 1)]);
} else {
    echo json_encode(['average_rating' => null]);
}
?>
<?php
session_start();
require_once 'db.php';

$response = ['success' => false, 'message' => ''];

if (!isset($_SESSION['user_id'])) {
    $response['message'] = 'Prisijunkite, kad galėtumėte vertinti.';
    echo json_encode($response);
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['rating'], $_POST['article_id'])) {
    $userId = $_SESSION['user_id'];
    $articleId = intval($_POST['article_id']);
    $rating = intval($_POST['rating']);

    // patikrint ar vartotojas jau ivertino
    $checkStmt = $conn->prepare("SELECT id FROM Ratings WHERE user_id = ? AND article_id = ?");
    $checkStmt->bind_param("ii", $userId, $articleId);
    $checkStmt->execute();
    $checkResult = $checkStmt->get_result();

    if ($checkResult->num_rows > 0) {
        $response['message'] = 'Jūs jau įvertinote šį straipsnį.';
    } else {
        $stmt = $conn->prepare("INSERT INTO Ratings (user_id, article_id, rating) VALUES (?, ?, ?)");
        $stmt->bind_param("iii", $userId, $articleId, $rating);
        if ($stmt->execute()) {
            $response['success'] = true;
            $response['message'] = 'Ačiū už Jūsų įvertinimą!';
        } else {
            $response['message'] = 'Klaida įrašant įvertinimą: ' . $conn->error;
        }
        $stmt->close();
    }
    $checkStmt->close();
    echo json_encode($response);
}
?>

<?php
session_start();
require_once 'db.php';


if (!isset($_SESSION['is_admin']) || !$_SESSION['is_admin']) {
    header("Location: login.php");
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['title'], $_POST['content'], $_POST['category'])) {
    $title = $conn->real_escape_string($_POST['title']);
    $content = htmlspecialchars($_POST['content'], ENT_QUOTES, 'UTF-8');
    $category = $conn->real_escape_string($_POST['category']);
    $imagePath = '';

    if (isset($_FILES['image']) && $_FILES['image']['error'] === UPLOAD_ERR_OK) {
        $fileTmpPath = $_FILES['image']['tmp_name'];
        $fileName = $_FILES['image']['name'];
        $fileNameCmps = explode('.', $fileName);
        $fileExtension = strtolower(end($fileNameCmps));
        $allowedfileExtensions = ['jpg', 'gif', 'png', 'jpeg'];
        if (in_array($fileExtension, $allowedfileExtensions)) {
            $uploadDir = './uploaded_images/';
            $newFileName = md5(time() . $fileName) . '.' . $fileExtension;
            $dest_path = $uploadDir . $newFileName;
            if (move_uploaded_file($fileTmpPath, $dest_path)) {
                $imagePath = $dest_path;
            } else {
                $message = 'Nuotraukos perkelimo į aplankal klaida!';
            }
        } else {
            $message = 'Įkelimas negalimas, leidžiami formatai: ' . implode(',', $allowedfileExtensions);
        }
    }

    $stmt = $conn->prepare("INSERT INTO News (title, content, image_path, category) VALUES (?, ?, ?, ?)");
    if ($stmt) {
        $stmt->bind_param("ssss", $title, $content, $imagePath, $category);
        if ($stmt->execute()) {
            $message = 'Straipsnis sėkmingai įkeltas!';
        } else {
            $message = 'Klaida įkeliant straipsnį: ' . $conn->error;
        }
        $stmt->close();
    } else {
        $message = 'Klaida! Pabandykite dar kartą' . $conn->error;
    }
}

?>
<!DOCTYPE html>
<html lang="lt">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administratoriaus Skydelis</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <header>
        <h1>Administratoriaus skydelis - informacijos įkėlimas</h1>
    </header>
    <main class="centering">
        <div class="admin-container">
            <?php if (!empty($message)): ?>
                <p class="error-message"><?= htmlspecialchars($message); ?></p>
            <?php endif; ?>
            <form action="admin.php" method="post" enctype="multipart/form-data">
                <div class="admin-form-group">
                    <label class="admin-label" for="title">Pavadinimas:</label>
                    <input class="admin-input" type="text" id="title" name="title" required>
                </div>
                <div class="admin-form-group">
                    <label class="admin-label" for="content">Turinys:</label>
                    <textarea class="admin-textarea" id="content" name="content" required></textarea>
                </div>
                <div class="admin-form-group">
                    <label class="admin-label" for="category">Kategorija:</label>
                    <select class="admin-select" id="category" name="category">
                        <option value="news">Naujienos</option>
                        <option value="tips">Patarimai</option>
                    </select>
                </div>
                <div class="admin-form-group">
                    <label class="admin-label" for="image">Straipsnio nuotrauka:</label>
                    <input type="file" id="image" name="image">
                </div>
                <button class="admin-button" type="submit">Pateikti</button>
                <button class="admin-button" onclick="window.location.href='index.php'">Į Pagrindinį</button>
            </form>
        </div>
    </main>
    <footer>
        <p>© 2024 Semicolon expected</p>
    </footer>
</body>

</html>
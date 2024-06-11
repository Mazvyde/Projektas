<?php
session_start();
require_once 'db.php';

$articleId = isset($_GET['id']) ? intval($_GET['id']) : 0;
$query = $conn->prepare("SELECT * FROM News WHERE id = ?");
$query->bind_param("i", $articleId);
$query->execute();
$result = $query->get_result();
$article = $result->fetch_assoc();

if (!$article) {
    echo "Straipsnis nerastas.";
    exit;
}

// Tikrinama, ar vartotojas yra administratorius
$isAdmin = isset($_SESSION['is_admin']) && $_SESSION['is_admin'];
?>

<!DOCTYPE html>
<html lang="lt">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= htmlspecialchars($article['title']) ?></title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <header>
        <h1>Kibernetinio saugumo naujienos</h1>
    </header>
    <nav>
        <ul>
            <li><a href="index.php" class="label">Pagrindinis</a></li>
            <li><a href="news.php" class="labelopened">Naujienos</a></li>
            <li><a href="tips.php" class="label">Patarimai</a></li>
            <?php if (isset($_SESSION['user_id'])): ?>
                <li><a href="logout.php" class="label">Atsijungti</a></li>
                <?php if ($isAdmin): ?>
                    <li><a href="admin.php" class="label">Administratoriaus Skydelis</a></li>
                <?php endif; ?>
            <?php else: ?>
                <li><a href="login.php" class="label">Prisijungti</a></li>
                <li><a href="register.php" class="label">Registruotis</a></li>
            <?php endif; ?>
        </ul>
    </nav>
    <main>
        <div class="article-container">
            <p id="hello"><?= htmlspecialchars($article['title']) ?></p>
            <img src="<?= htmlspecialchars($article['image_path']) ?>" alt="Paveikslėlio aprašymas" class="wrap-image">
            <p><?= nl2br(htmlspecialchars($article['content'])) ?></p>
        </div>
        <div class="rating-section">
            <?php if (isset($_SESSION['user_id'])): ?>
                <form id="ratingForm">
                    <input type="hidden" name="article_id" id="articleId" value="<?= $article['id'] ?>">
                    <div class="rating-stars" id="ratingStars">
                        <span class="star" data-value="1">&#9733;</span>
                        <span class="star" data-value="2">&#9733;</span>
                        <span class="star" data-value="3">&#9733;</span>
                        <span class="star" data-value="4">&#9733;</span>
                        <span class="star" data-value="5">&#9733;</span>
                    </div>
                    <input type="hidden" name="rating" id="ratingValue">
                    <button id="ratingSubmit" type="submit">Vertinti</button>
                </form>
                <div id="ratingMessage"></div>
                <div id="averageRating"></div>
            <?php else: ?>
                <p id="inforating">Palikti vertinimą gali tik registruoti vartotojai</p>
            <?php endif; ?>
        </div>
    </main>
    <footer>
        <p>© 2024 Semicolon expected</p>
    </footer>
    <script src="rate.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const stars = document.querySelectorAll('.star');

            stars.forEach(function(star) {
                star.addEventListener('click', function() {
                    const value = this.dataset.value;
                    document.getElementById('ratingValue').value = value;
                    highlightStars(value);
                });
            });

            function highlightStars(value) {
                stars.forEach(function(star) {
                    if (star.dataset.value <= value) {
                        star.classList.add('active');
                    } else {
                        star.classList.remove('active');
                    }
                });
            }
        });
    </script>
</body>

</html>
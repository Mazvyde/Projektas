<?php
session_start();
require_once 'db.php';

$news = $conn->query("SELECT * FROM News WHERE category = 'news' ORDER BY published_date DESC")->fetch_all(MYSQLI_ASSOC);
$isAdmin = isset($_SESSION['is_admin']) && $_SESSION['is_admin'];
?>
<!DOCTYPE html>
<html lang="lt">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Naujienos</title>
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
    <div class="news-container">
        <?php foreach ($news as $article): ?>
            <div class="news-article" onclick="window.location.href='article.php?id=<?= $article['id'] ?>'">
                <?php if (!empty($article['image_path'])): ?>
                    <img src="<?= htmlspecialchars($article['image_path']) ?>" alt="Straipsnio nuotrauka" class="news-img">
                <?php endif; ?>
                <h3 id="hello"><?= htmlspecialchars($article['title'])?></h3>
                <div>
                <p class="date">Publikavimo data: <?= htmlspecialchars($article['published_date'])?></p>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</main>
    <footer>
       <p>© 2024 Semicolon expected</p>
    </footer>
</body>

</html>
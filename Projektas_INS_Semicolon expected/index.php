<?php
session_start();
require_once 'db.php';

// Tikrinama, ar vartotojas yra administratorius
$isAdmin = isset($_SESSION['is_admin']) && $_SESSION['is_admin'];
?>
<!DOCTYPE html>
<html lang="lt">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kibernetinio saugumo naujienos</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
<div class="binary-rain">
            <span class="binary" style="left: 2%; animation-duration: 5s;"></span>
            <span class="binary" style="left: 4%; animation-duration: 6s;"></span>
            <span class="binary" style="left: 6%; animation-duration: 4.5s;"></span>
            <span class="binary" style="left: 8%; animation-duration: 5.5s;"></span>
            <span class="binary" style="left: 10%; animation-duration: 5.2s;"></span>
            <span class="binary" style="left: 12%; animation-duration: 6s;"></span>
            <span class="binary" style="left: 14%; animation-duration: 4.8s;"></span>
            <span class="binary" style="left: 16%; animation-duration: 5.7s;"></span>
            <span class="binary" style="left: 18%; animation-duration: 5.3s;"></span>
            <span class="binary" style="left: 20%; animation-duration: 6s;"></span>
            <span class="binary" style="left: 22%; animation-duration: 4.7s;"></span>
            <span class="binary" style="left: 24%; animation-duration: 5.8s;"></span>
            <span class="binary" style="left: 26%; animation-duration: 5.4s;"></span>
            <span class="binary" style="left: 28%; animation-duration: 6s;"></span>
            <span class="binary" style="left: 30%; animation-duration: 4.6s;"></span>
            <span class="binary" style="left: 32%; animation-duration: 5.9s;"></span>
            <span class="binary" style="left: 34%; animation-duration: 5.5s;"></span>
            <span class="binary" style="left: 36%; animation-duration: 6s;"></span>
            <span class="binary" style="left: 38%; animation-duration: 4.9s;"></span>
            <span class="binary" style="left: 40%; animation-duration: 5.7s;"></span>
            <span class="binary" style="left: 42%; animation-duration: 5.3s;"></span>
            <span class="binary" style="left: 44%; animation-duration: 6s;"></span>
            <span class="binary" style="left: 46%; animation-duration: 4.7s;"></span>
            <span class="binary" style="left: 48%; animation-duration: 5.8s;"></span>
            <span class="binary" style="left: 50%; animation-duration: 5.4s;"></span>
            <span class="binary" style="left: 52%; animation-duration: 6s;"></span>
            <span class="binary" style="left: 54%; animation-duration: 4.6s;"></span>
            <span class="binary" style="left: 56%; animation-duration: 5.9s;"></span>
            <span class="binary" style="left: 58%; animation-duration: 5.5s;"></span>
            <span class="binary" style="left: 60%; animation-duration: 6s;"></span>
            <span class="binary" style="left: 62%; animation-duration: 4.9s;"></span>
            <span class="binary" style="left: 64%; animation-duration: 5.7s;"></span>
            <span class="binary" style="left: 66%; animation-duration: 5.3s;"></span>
            <span class="binary" style="left: 68%; animation-duration: 6s;"></span>
            <span class="binary" style="left: 70%; animation-duration: 4.7s;"></span>
            <span class="binary" style="left: 72%; animation-duration: 5.8s;"></span>
            <span class="binary" style="left: 74%; animation-duration: 5.4s;"></span>
            <span class="binary" style="left: 76%; animation-duration: 6s;"></span>
            <span class="binary" style="left: 78%; animation-duration: 4.6s;"></span>
            <span class="binary" style="left: 80%; animation-duration: 5.9s;"></span>
            <span class="binary" style="left: 82%; animation-duration: 5.5s;"></span>
            <span class="binary" style="left: 84%; animation-duration: 6s;"></span>
            <span class="binary" style="left: 86%; animation-duration: 4.9s;"></span>
            <span class="binary" style="left: 88%; animation-duration: 5.7s;"></span>
            <span class="binary" style="left: 90%; animation-duration: 5.3s;"></span>
            <span class="binary" style="left: 92%; animation-duration: 6s;"></span>
            <span class="binary" style="left: 94%; animation-duration: 4.7s;"></span>
            <span class="binary" style="left: 96%; animation-duration: 5.8s;"></span>
            <span class="binary" style="left: 98%; animation-duration: 5.4s;"></span>
        </div>
        <script>
            function getRandomColor() {
                let colors = ['#333', '#666', '#ccc', '#fff']; 
                let randomIndex = Math.floor(Math.random() * colors.length); 
                return colors[randomIndex]; 
            }
            let binaryElements = document.querySelectorAll('.binary');
            binaryElements.forEach(function (element) {
                element.style.color = getRandomColor();
            });     
        </script>
    <header>
        <h1>Kibernetinio saugumo naujienos</h1>
    </header>
    <nav>
            <ul>
                <li><a href="index.php" class="labelopened">Pagrindinis</a></li>
                <li><a href="news.php" class="label">Naujienos</a></li>
                <li><a href="tips.php" class="label">Patarimai</a></li>
                <?php if (isset($_SESSION['user_id'])): ?>
                    <?php if ($isAdmin): ?>
                        <li><a href="admin.php" class="label">Administratoriaus skydelis</a></li>
                    <?php endif; ?>
                    <li><a href="logout.php" class="label">Atsijungti</a></li>
                <?php else: ?>
                    <li><a href="login.php" class="label">Prisijungti</a></li>
                    <li><a href="register.php" class="label">Registruotis</a></li>
                <?php endif; ?>
            </ul>
        </nav>
    <main>
        <div class="container">
        <p>Sveiki atvykę į mūsų kibernetinio saugumo svetainę! </p>

        <p>Mes - Vilniaus verslo kolegijos antro kurso studentai, pasinėrę į nežinomų kodų ir virtualiosios realybės
            pasaulį, siekdami apginti jūsų internetinį saugumą. Mūsų misija - ne tik išmokti pačius naujausius
            kibernetinio saugumo metodus, bet ir dalintis jais su jumis, mūsų brangiais lankytojais.</p>


        <p>Kibernetinis saugumas yra ne tik mūsų specialybė, bet ir mūsų aistra. Kiekvieną dieną stengiamės suprasti
            bei įveikti naujus iššūkius, su kuriais susiduria ši besikeičianti ir kibernetinėje erdvėje nuolat
            evoliucionuojanti visuomenė.</p>

        <p>Mūsų svetainėje rasite įvairių naudingų straipsnių, patarimų ir naujienų apie kibernetinį saugumą. Norime,
            kad jūs jaustumėtės saugūs ir pasiruošę įveikti bet kokius iššūkius, kylančius internetinėje erdvėje.</p>

        <p>Prisijunkite prie mūsų bendruomenės ir kartu kovokime už saugią ir patikimą interneto aplinką!</p>
        </div>
    </main>

    <footer>
        <p>© 2024 Semicolon expected</p>
    </footer>
</body>

</html>
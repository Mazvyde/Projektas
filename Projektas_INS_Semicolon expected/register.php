<?php
require_once 'db.php';

$message = '';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $conn->real_escape_string($_POST['username']);
    $email = $conn->real_escape_string($_POST['email']);
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $isAdmin = ($_POST['registration_code'] === 'SPECIAL_ADMIN_CODE'); // Secret admin registration code

    // Patikriname, ar toks vartotojo vardas jau yra duomenų bazėje
    $check_username_stmt = $conn->prepare("SELECT COUNT(*) FROM Users WHERE username = ?");
    if ($check_username_stmt) {
        $check_username_stmt->bind_param("s", $username);
        $check_username_stmt->execute();
        $check_username_stmt->bind_result($username_count);
        $check_username_stmt->fetch();
        $check_username_stmt->close();

        if ($username_count > 0) {
            $message = 'Šis vartotojo vardas jau yra užregistruotas.';
            // Galite pridėti logiką, ką daryti, jei vartotojo vardas jau yra užregistruotas
        } else {
            // Patikriname, ar toks el. pašto adresas jau yra duomenų bazėje
            $check_email_stmt = $conn->prepare("SELECT COUNT(*) FROM Users WHERE email = ?");
            if ($check_email_stmt) {
                $check_email_stmt->bind_param("s", $email);
                $check_email_stmt->execute();
                $check_email_stmt->bind_result($email_count);
                $check_email_stmt->fetch();
                $check_email_stmt->close();

                if ($email_count > 0) {
                    $message = 'Šis el. pašto adresas jau yra užregistruotas.';
                    // Galite pridėti logiką, ką daryti, jei el. pašto adresas jau yra užregistruotas
                } else {
                    // Tęskime įrašymą į duomenų bazę
                    $stmt = $conn->prepare("INSERT INTO Users (username, email, password, is_admin) VALUES (?, ?, ?, ?)");
                    if ($stmt) {
                        $stmt->bind_param("sssi", $username, $email, $password, $isAdmin);
                        if ($stmt->execute()) {
                            $message = 'Naudotojas sėkmingai užregistruotas!';
                            // Įrašome JavaScript kodą, kuris po 3 sekundžių nukreips vartotoją į index.php puslapį
                            echo'   <script>
                                        setTimeout(function(){
                                        window.location.href = "index.php";
                                        }, 3000);
                                    </script>
                                ';
                        } else {
                            $message = 'Klaida: ' . $conn->error;
                        }
                        $stmt->close();
                    } else {
                        $message = 'Klaida: ' . $conn->error;
                    }
                }
            } else {
                $message = 'Klaida: ' . $conn->error;
            }
        }
    } else {
        $message = 'Klaida: ' . $conn->error;
    }
}
?>


<!DOCTYPE html>
<html lang="lt">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registracija</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
<header>
        <h1>Kibernetinio saugumo naujienos</h1>
    </header>
    <nav>
        <ul>
            <li><a href="index.php" class="label">Pagrindinis</a></li>
            <li><a href="news.php" class="label">Naujienos</a></li>
            <li><a href="tips.php" class="label">Patarimai</a></li>
            <?php if (isset($_SESSION['user_id'])): ?>
                <li><a href="logout.php" class="logout">Atsijungti</a></li>
                <?php if ($isAdmin): ?>
                    <li><a href="admin.php" class="label">Administratoriaus Skydelis</a></li>
                <?php endif; ?>
            <?php else: ?>
                <li><a href="login.php" class="label">Prisijungti</a></li>
                <li><a href="register.php" class="labelopened">Registruotis</a></li>
            <?php endif; ?>
        </ul>
    </nav>
    <main> 
    <div class="registration-container">
        <h2>Naujo vartotojo registracija</h2>
        <form action="register.php" method="post">
            <div class="form-group">
                <label for="username">Vartotojo vardas:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="email">El. paštas:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Slaptažodis:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <input type="hidden" id="registration_code" name="registration_code">
            <button class= "log" type="submit">Registruotis</button>
            <button class="log" onclick="window.location.href='login.php'">Prisijungti</button>
        </form>
        <?php if (!empty($message)): ?>
            <p class="message"><?= $message ?></p>
        <?php endif; ?>
    </div>
    </main>
</body>
<footer>
    <p>© 2024 Semicolon expected</p>
    </footer>
</html>

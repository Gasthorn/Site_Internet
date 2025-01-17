<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    setcookie("name", $_POST['name'], time() + (3 * 24 * 60 * 60), "/");
    setcookie("email", $_POST['email'], time() + (3 * 24 * 60 * 60), "/");
    setcookie("amount", $_POST['amount'], time() + (3 * 24 * 60 * 60), "/");
    setcookie("message", $_POST['message'], time() + (3 * 24 * 60 * 60), "/");
    
    header("Location: " . $_SERVER['PHP_SELF']);
    exit;
}
?>
<!DOCTYPE html>
<html lang="fr">
    <head>     
    	<meta charset="UTF-8">
    	<title>Don - SPC</title>

        <?php
            $nav=$_SERVER['HTTP_USER_AGENT'];
            if (preg_match('/Firefox/',$nav)){
                echo '<link href="style_1.css" rel="stylesheet" media="all">';
            }
            else{
                echo '<link href="style_2.css" rel="stylesheet" media="all">';
            }
        ?>
    </head>

    <body>
    <div class="container">
        <h1>Faire un don</h1>
        <p>Votre générosité permet à la Société de Protection des Chats (SPC) de continuer sa mission. Merci pour votre soutien !</p><br>
        <form method="post" action="Remerciement.php">
            <label for="name">Nom complet :</label>
            <input type="text" id="name" name="name" placeholder="Votre nom" value="<?php echo isset($_COOKIE['name']) ? htmlspecialchars($_COOKIE['name']) : ''; ?>" required><br>

            <label for="email">Adresse email :</label>
            <input type="email" id="email" name="email" placeholder="Votre email" value="<?php echo isset($_COOKIE['email']) ? htmlspecialchars($_COOKIE['email']) : ''; ?>" required><br><br>

            <label for="amount">Montant du don (€) :</label>
            <select id="amount" name="amount" required>
                <option value="10" <?php echo (isset($_COOKIE['amount']) && $_COOKIE['amount'] == '10') ? 'selected' : ''; ?>>10 €</option>
                <option value="20" <?php echo (isset($_COOKIE['amount']) && $_COOKIE['amount'] == '20') ? 'selected' : ''; ?>>20 €</option>
                <option value="50" <?php echo (isset($_COOKIE['amount']) && $_COOKIE['amount'] == '50') ? 'selected' : ''; ?>>50 €</option>
                <option value="100" <?php echo (isset($_COOKIE['amount']) && $_COOKIE['amount'] == '100') ? 'selected' : ''; ?>>100 €</option>
                <option value="other" <?php echo (isset($_COOKIE['amount']) && $_COOKIE['amount'] == 'other') ? 'selected' : ''; ?>>Autre montant</option>
            </select><br>

            <label for="message">Message (optionnel) :</label>
            <textarea id="message" name="message" rows="4" placeholder="Votre message..."><?php echo isset($_COOKIE['message']) ? htmlspecialchars($_COOKIE['message']) : ''; ?></textarea><br>

            <button type="submit">Faire un don</button>
        </form>
    </div>
    </body>
</html>
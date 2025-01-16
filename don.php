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
            <input type="text" id="name" name="name" placeholder="Votre nom" required><br>
            
            <label for="email">Adresse email :</label>
            <input type="email" id="email" name="email" placeholder="Votre email" required><br><br>
            
            <label for="amount">Montant du don (€) :</label>
            <select id="amount" name="amount" required>
                <option value="10">10 €</option>
                <option value="20">20 €</option>
                <option value="50">50 €</option>
                <option value="100">100 €</option>
                <option value="other">Autre montant</option>
            </select><br>
            
            <label for="message">Message (optionnel) :</label>
            <textarea id="message" name="message" rows="4" placeholder="Votre message..."></textarea><br>
            
            <button type="submit">Faire un don</button>
        </form>
    </div>
    </body>
</html>
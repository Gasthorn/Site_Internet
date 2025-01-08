<!DOCTYPE html>
<html lang="fr">
    <head>     
    	<meta charset="UTF-8">
    	<title>Accès base de donnée</title>
        <link href="style.css" rel="stylesheet" media="all">
    </head>
    <body>
    <?php
        $server = "localhost:3306";
        $user = "root";				//identifiant de la fac si pc ensim
        $pwd = "";					//mdp de la fac si pc ensim
        $db = "base_chat";

        $mysqli = new mysqli($server, $user, $pwd, $db);
        if($mysqli){
            $couleur = $_POST["couleur"];
            $caractere = $_POST["caractere"];
            $age = $_POST["age"];
            $sexe = $_POST["sexe"];

            $query = 'SELECT prenom, photo FROM chats WHERE couleur = ? AND caractere = ? AND age = ? AND sexe = ?';
            
        }
        else {
            echo'<p>Erreur. Connection à la base de donnée impossible</p>';
        }
        $mysqli->close();
        
	?>
    </body>
</html>
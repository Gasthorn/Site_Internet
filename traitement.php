<!DOCTYPE html>
<html lang="fr">
    <head>     
    	<meta charset="UTF-8">
    	<title>Descriptif chat</title>
        <link href="style.css" rel="stylesheet" media="all">
    </head>
    <body>
    <?php
        $server = "localhost:3306"; //sur ordinateur perso
        $user = "root";
        $pwd = "";
        $db = "base_chat";
        
        /*$server = "localhost"; //sur ordi ensim
        $user = "s172601";
        $pwd = "Bqq499tb";
        $db = "s172601";*/

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
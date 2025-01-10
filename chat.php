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
            $id = $_GET["id"];

            $query = 'SELECT prenom, photo FROM chats WHERE id = ?';
            $stmt = $mysqli->prepare($query);
            $stmt->bind_param("i",$id);
            $stmt->execute();
            $stmt->store_result();

            if($stmt->num_rows>0){
                $stmt->bind_result($prenom,$photo);
                $stmt->fetch();
                echo"<img src='Photos_Chats/PhotoCompletes/".htmlspecialchars($photo)."' width='50%' height='26%'/>";
            }
            else{
                echo'Erreur 404 : Chat introuvable';
                echo'<p><a href="RepertoireChat.php">Retour</a></p>';
            }
            
        }
        else {
            echo'<p>Erreur. Connection à la base de donnée impossible</p>';
        }
        $mysqli->close();
        
	?>
    </body>
</html>
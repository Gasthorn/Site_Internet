<!DOCTYPE html>
<html lang="fr">
    <head>     
    	<meta charset="UTF-8">
    	<title>Descriptif chat</title>
        <link href="style.css" rel="stylesheet" media="all">
    </head>
    <body>
    <div class="logo"><a href="index.html"><img src="Ressources/spc.png" alt="Logo De La SPC" height="108" width="100"/></a></div>
    <div class="Titre"><h1>Société De Protection Des Chats</h1></div><br>
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
            $id = $_GET["Id"];

            $query = 'SELECT prenom, photo FROM chats WHERE id = ?';
            $stmt = $mysqli->prepare($query);
            $stmt->bind_param("i",$id);
            $stmt->execute();
            $stmt->store_result();

            if($stmt->num_rows>0){
                $stmt->bind_result($prenom,$photo);
                $stmt->fetch();
                echo"<div class='chat'>
                    <a href='Photos_Chats/PhotoCompletes/".htmlspecialchars($photo)."'>
                        <img class='image_reduite' src='Photos_Chats/PhotoCompletes/".htmlspecialchars($photo)."'/>
                    </a>
                    <p class='txt_chat'>Paragraphe descriptif du chat à rajouter à la db</p>
                </div>";
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
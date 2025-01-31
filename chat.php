<!DOCTYPE html>
<html lang="fr">
    <head>     
    	<meta charset="UTF-8">
    	<title>Descriptif chat</title>

        <?php
            $nav=$_SERVER['HTTP_USER_AGENT'];
            if (preg_match('/Firefox/',$nav)){
                echo '<link href="style_2.css" rel="stylesheet" media="all">';
            }
            else{
                echo '<link href="style_1.css" rel="stylesheet" media="all">';
            }
        ?>
    </head>
  
    <body>
    <div class="logo"><a href="index.html"><img src="Ressources/spc.png" alt="Logo De La SPC" height="108" width="100"/></a></div>
    <div class="Titre"><h1>Société De Protection Des Chats</h1></div>
    <div style="text-align:center;"><a href="RepertoireChat.php"><p>Retour au répertoire</p></a></div>
    <?php
        $server = "localhost"; 
        $user = "s172601";
        $pwd = "Bqq499tb";
        $db = "s172601";

        $mysqli = new mysqli($server, $user, $pwd, $db);
        if($mysqli){
            $id = $_GET["Id"];

            $query = 'SELECT prenom, photo, paragraphe FROM chats WHERE id = ?';
            $stmt = $mysqli->prepare($query);
            $stmt->bind_param("i",$id);
            $stmt->execute();
            $stmt->store_result();

            if($stmt->num_rows>0){
                $stmt->bind_result($prenom,$photo,$paragraphe);
                $stmt->fetch();
                echo"<div class='chat'>
                    <h1>".htmlspecialchars($prenom, ENT_QUOTES, 'UTF-8')."</h1>
                    <a href='Photos_Chats/PhotoCompletes/".htmlspecialchars($photo)."'>
                        <img class='image_reduite' src='Photos_Chats/PhotoCompletes/".htmlspecialchars($photo)."'/>
                    </a>
                    <p class='txt_chat'>".htmlspecialchars($paragraphe, ENT_QUOTES, 'UTF-8')."</p><br>
                </div>";
            }
            else{
                echo'Erreur 404 : Chat introuvable';
            }
            
        }
        else {
            echo'<p>Erreur. Connection à la base de donnée impossible</p>';
        }
        $mysqli->close();
        
	?>
    </body>
</html>
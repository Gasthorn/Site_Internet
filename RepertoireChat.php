<!DOCTYPE html>
<html lang="fr">
    <head>     
    	<meta charset="UTF-8">
    	<title>Site Officiel SPC</title>
        <link href="style.css" rel="stylesheet" media="all">
    </head>
    <body>
        <div class="logo"><img src="Image/spc.png" alt="Logo De La SPC" height="108" width="100"/></div>
        <div class="Titre"><h1>Société De Protection Des Chats</h1></div><br>
        <br>
        <div class="bandeau">
            <form class="selection" action="traitement.php" method="post">
                <select name="couleur">
                    <option value="*" selected="selected">Couleur</option>
                    <option value="gris">Gris</option>
                    <option value="orange">Orange</option>
                    <option value="calico">Calico</option>
                </select>
                <select name="caractere">
                    <option value="*" selected="selected">Caractère</option>
                    <option value="joueur">Joueur</option>
                    <option value="dormeur">Dormeur</option>
                    <option value="mangeur">Gros Mangeur</option>
                </select>
                <select name="age">
                    <option value="*" selected="selected">Age</option>
                    <option value="lessFive">-5 ans</option>
                    <option value="fiveToTen">De 5 à 10 ans</option>
                    <option value="moreTen">+10 ans</option>
                </select>
                <select name="sexe">
                    <option value="*" selected="selected">Mâle et Femelle</option>
                    <option value="M">Mâle</option>
                    <option value="F">Femelle</option>
                </select>
                <input class="recherche" type="submit" value="Rechercher"><br>
            </form>
        </div>
        <div class="tableau">
            <?php
            $server = "localhost:3306";
            $user = "root";
            $pwd = "";
            $db = "base_chat";

            $mysqli = new mysqli($server, $user, $pwd, $db);
            if($mysqli){
                $couleur = $_POST["couleur"];
                $caractere = $_POST["caractere"];
                $age = $_POST["age"];
                $sexe = $_POST["sexe"];
    
                $query = 'SELECT prenom, photo FROM chats';

                $result = $mysqli->query($query);

                if($result->num_rows > 0){
                    echo "<div class='tableau'>";
                    while($row = $result->fetch_assoc()) {
                        echo "<div class='case'><img src='Image/".$row['image']."' height='200' width='160'/><p>".$row["prenom"]."</p>";
                      }
                }
            }
            else {
                echo'<p>Erreur. Connection à la base de donnée impossible</p>';
            }
            $mysqli->close();
            ?>
        </div>
        <br><br>
    </body>
</html>
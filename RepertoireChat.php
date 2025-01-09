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
                <select name="age">
                    <option value="*" selected="selected">Age</option>
					<option value="lessTwo">Moins de 2 ans</option>
                    <option value="twoToFive">De 2 à 5 ans</option>
                    <option value="fiveToTen">De 5 à 10 ans</option>
                    <option value="moreTen">Plus de 10 ans</option>
                </select>
				<select name="caractere">
                    <option value="*" selected="selected">Caractère</option>
					<option value="actif">Actif</option>
					<option value="affectueux">Affectueux</option>
                    <option value="dormeur">Dormeur</option>
					<option value="joueur">Joueur</option>
                    <option value="gourmand">Gourmand</option>
					<option value="timide">Timide</option>
                </select> 
				<select name="couleur">
                    <option value="*" selected="selected">Couleur</option>
					<option value="bicolore">Bicolore</option>
                    <option value="blanc">Blanc</option>
					<option value="brun">Brun</option>
					<option value="calico">Calico</option>
					<option value="gris">Gris</option>
					<option value="noir">Noir</option>
                    <option value="orange">Orange</option>
				</select>                               
                <select name="sexe">
                    <option value="*" selected="selected">Sexe</option>
                    <option value="M">Mâle</option>
                    <option value="F">Femelle</option>
                </select>
                <input class="recherche" type="submit" value="Rechercher"><br>
            </form>
        </div>
        <div class="tableau">
            <?php
            /*$server = "localhost:3306"; //sur ordinateur perso
            $user = "root";
            $pwd = "";
            $db = "base_chat";*/
			
			/*$server = "localhost"; //sur ordi ensim
            $user = "s172601";
            $pwd = "Bqq499tb";
            $db = "s172601";*/

            $mysqli = new mysqli($server, $user, $pwd, $db);
            if($mysqli){    
                $query = 'SELECT prenom, photo FROM chats';

                $result = $mysqli->query($query);

                if($result->num_rows > 0){
                    echo "<div class='tableau'>";
                    while($row = $result->fetch_assoc()) {
                        echo "<div class='case'><a href='Photos_Chats/PhotoCompletes/".$row["photo"]."'><img src='Photos_Chats/Tetes/".$row["photo"]."' height='200' width='200'/></a><p>".$row["prenom"]."</p></div>";
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
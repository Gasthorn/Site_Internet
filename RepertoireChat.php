
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
    <div class="Titre"><h1>Société De Protection Des Chats</h1></div><br>
        <br>
        <div class="bandeau">
            <a href="index.html">Retour</a>
            <form class="selection" action="RepertoireChat.php" method="post">
                <select name="age">
                    <option value="*" <?php echo (isset($_COOKIE['age']) && $_COOKIE['age'] == '*') ? 'selected' : ''; ?>>Age</option>
                    <option value="lessTwo" <?php echo (isset($_COOKIE['age']) && $_COOKIE['age'] == 'lessTwo') ? 'selected' : ''; ?>>Moins de 2 ans</option>
                    <option value="twoToFive" <?php echo (isset($_COOKIE['age']) && $_COOKIE['age'] == 'twoToFive') ? 'selected' : ''; ?>>De 2 à 5 ans</option>
                    <option value="fiveToTen" <?php echo (isset($_COOKIE['age']) && $_COOKIE['age'] == 'fiveToTen') ? 'selected' : ''; ?>>De 5 à 10 ans</option>
                    <option value="moreTen" <?php echo (isset($_COOKIE['age']) && $_COOKIE['age'] == 'moreTen') ? 'selected' : ''; ?>>Plus de 10 ans</option>
                </select>

                <select name="caractere">
                    <option value="*" <?php echo (isset($_COOKIE['caractere']) && $_COOKIE['caractere'] == '*') ? 'selected' : ''; ?>>Caractère</option>
                    <option value="actif" <?php echo (isset($_COOKIE['caractere']) && $_COOKIE['caractere'] == 'actif') ? 'selected' : ''; ?>>Actif</option>
                    <option value="affectueux" <?php echo (isset($_COOKIE['caractere']) && $_COOKIE['caractere'] == 'affectueux') ? 'selected' : ''; ?>>Affectueux</option>
                    <option value="dormeur" <?php echo (isset($_COOKIE['caractere']) && $_COOKIE['caractere'] == 'dormeur') ? 'selected' : ''; ?>>Dormeur</option>
                    <option value="joueur" <?php echo (isset($_COOKIE['caractere']) && $_COOKIE['caractere'] == 'joueur') ? 'selected' : ''; ?>>Joueur</option>
                    <option value="gourmand" <?php echo (isset($_COOKIE['caractere']) && $_COOKIE['caractere'] == 'gourmand') ? 'selected' : ''; ?>>Gourmand</option>
                    <option value="timide" <?php echo (isset($_COOKIE['caractere']) && $_COOKIE['caractere'] == 'timide') ? 'selected' : ''; ?>>Timide</option>
                </select>

                <select name="couleur">
                    <option value="*" <?php echo (isset($_COOKIE['couleur']) && $_COOKIE['couleur'] == '*') ? 'selected' : ''; ?>>Couleur</option>
                    <option value="bicolore" <?php echo (isset($_COOKIE['couleur']) && $_COOKIE['couleur'] == 'bicolore') ? 'selected' : ''; ?>>Bicolore</option>
                    <option value="blanc" <?php echo (isset($_COOKIE['couleur']) && $_COOKIE['couleur'] == 'blanc') ? 'selected' : ''; ?>>Blanc</option>
                    <option value="brun" <?php echo (isset($_COOKIE['couleur']) && $_COOKIE['couleur'] == 'brun') ? 'selected' : ''; ?>>Brun</option>
                    <option value="calico" <?php echo (isset($_COOKIE['couleur']) && $_COOKIE['couleur'] == 'calico') ? 'selected' : ''; ?>>Calico</option>
                    <option value="gris" <?php echo (isset($_COOKIE['couleur']) && $_COOKIE['couleur'] == 'gris') ? 'selected' : ''; ?>>Gris</option>
                    <option value="noir" <?php echo (isset($_COOKIE['couleur']) && $_COOKIE['couleur'] == 'noir') ? 'selected' : ''; ?>>Noir</option>
                    <option value="orange" <?php echo (isset($_COOKIE['couleur']) && $_COOKIE['couleur'] == 'orange') ? 'selected' : ''; ?>>Orange</option>
                </select>

                <select name="sexe">
                    <option value="*" <?php echo (isset($_COOKIE['sexe']) && $_COOKIE['sexe'] == '*') ? 'selected' : ''; ?>>Sexe</option>
                    <option value="M" <?php echo (isset($_COOKIE['sexe']) && $_COOKIE['sexe'] == 'M') ? 'selected' : ''; ?>>Mâle</option>
                    <option value="F" <?php echo (isset($_COOKIE['sexe']) && $_COOKIE['sexe'] == 'F') ? 'selected' : ''; ?>>Femelle</option>
                </select>

                <input class="recherche" type="submit" value="Rechercher"><br>
            </form>
        </div>
        <?php
            $server = "localhost:3306"; //sur ordinateur perso
            $user = "root";
            $pwd = "";
            $db = "s172601";

            /*$server = "localhost"; //sur ordi ensim
            $user = "s172601";
            $pwd = "Bqq499tb";
            $db = "s172601";*/

            $mysqli = new mysqli($server, $user, $pwd, $db);
            if($mysqli){
                if ($_SERVER["REQUEST_METHOD"] == "POST") {
                    setcookie("age", $_POST['age'], time() + (3 * 24 * 60 * 60), "/");
                    setcookie("caractere", $_POST['caractere'], time() + (3 * 24 * 60 * 60), "/");
                    setcookie("couleur", $_POST['couleur'], time() + (3 * 24 * 60 * 60), "/");
                    setcookie("sexe", $_POST['sexe'], time() + (3 * 24 * 60 * 60), "/");
                    
                    header("Location: " . $_SERVER['PHP_SELF']);
                    exit;
                }
                
                $age = isset($_COOKIE['age']) ? $_COOKIE['age'] : "*";
                $caractere = isset($_COOKIE['caractere']) ? $_COOKIE['caractere'] : "*";
                $couleur = isset($_COOKIE['couleur']) ? $_COOKIE['couleur'] : "*";
                $sexe = isset($_COOKIE['sexe']) ? $_COOKIE['sexe'] : "*";

                $query = "SELECT id, prenom, photo FROM chats WHERE 1";

                if ($age != "*") {
                    $query .= " AND age " . ($age == "lessTwo" ? "<= 2" : ($age == "twoToFive" ? "BETWEEN 2 AND 5" : ($age == "fiveToTen" ? "BETWEEN 5 AND 10" : "> 10")));
                }
                if ($caractere != "*") {
                    $query .= " AND caractere = '" . $mysqli->real_escape_string($caractere) . "'";
                }
                if ($couleur != "*") {
                    $query .= " AND couleur = '" . $mysqli->real_escape_string($couleur) . "'";
                }
                if ($sexe != "*") {
                    $query .= " AND sexe = '" . $mysqli->real_escape_string($sexe) . "'";
                }
                $result = $mysqli->query($query);

                if($result->num_rows > 0){
                    echo "<div class='tableau'>";
                    while($row = $result->fetch_assoc()) {
                        echo "
                        <form class='selection' action='chat.php' method='get' id='chatForm".$row['id']."'>
                            <div class='case' onclick='submitForm(".$row['id'].")'>
                                <img src='Photos_Chats/Tetes/".$row["photo"]."' height='200' width='200'/>
                                <p>".$row["prenom"]."</p>
                                <input name='Id' type='hidden' value='".$row["id"]."'>
                            </div>
                        </form>

                        <script>
                            function submitForm(id) {
                                var form = document.getElementById('chatForm' + id); // Sélectionne le formulaire correspondant
                                form.submit(); // Soumet le formulaire
                            }
                        </script>";
                    }
                    echo "</div>";
                } else {
                    echo "<p style='text-align:center;'>Aucun chat trouvé</p>";
                }
            } else {
                echo '<p>Erreur. Connexion à la base de données impossible</p>';
            }

            $mysqli->close();
            ?>
    </body>
</html>
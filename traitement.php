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
        $user = "root";
        $pwd = "";
        $db = "base_chat";

        $mysqli = new mysqli($server, $user, $pwd, $db);
        if($mysqli){
            $couleur = $_POST["couleur"];
            $caractere = $_POST["caractere"];
            $age = $_POST["age"];
            $sexe = $_POST["sexe"];
            
            if ($age=="lessTwo"){
                $query = "SELECT id,prenom, photo FROM chats WHERE age <= 2";
            }
            else if ($age=="twoToFive"){
                $query = "SELECT id,prenom, photo FROM chats WHERE age > 2 AND age <=5";
            }
            else if ($age=="fiveToTen"){
                $query = "SELECT id,prenom, photo FROM chats WHERE age > 5 AND age <=10";
            }
            else if ($age=="moreTen"){
                $query = "SELECT id,prenom, photo FROM chats WHERE age > 10";
            }       
            else if ($age == '*'){
                $query = "SELECT id,prenom, photo FROM chats WHERE age > 0";
            }   

            if ($caractere != '*'){
                $query .= " AND caractere = '".$caractere."'";
            }
            if ($couleur != '*'){
                $query .= " AND couleur = '".$couleur."'";
            }
            if ($sexe != '*'){
                $query .= " AND sexe = '".$sexe."'";
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
                }
                else{
                    echo"Aucun chat trouvé";
                }
        }
        else {
            echo'<p>Erreur. Connection à la base de donnée impossible</p>';
        }
        $mysqli->close();
        
	?>
    </body>
</html>
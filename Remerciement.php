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

    <body style="background-image: url('Ressources/trollface.jpg'); background-size: cover; background-position: center center; background-attachment: fixed; background-repeat: no-repeat; height: 100vh; margin: 0;">
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
            $name = $_POST['name'];
            $email = $_POST['email'];
            $amount = $_POST['amount'] === 'other' ? $_POST['otherAmount'] : $_POST['amount'];
            $message = $_POST['message'];

            $query = "SELECT * FROM donateurs WHERE email = ?";
            $stmt = $mysqli->prepare($query);
            $stmt->bind_param('s',$email);
            $stmt->execute();
            $result = $stmt->get_result();
            $donateurs = $result->fetch_assoc();

            if ($donateurs){
                $newTotal = $donateurs['total_donations'] + $amount;
                $sqlUpdate = "UPDATE donateurs SET total_donations = ? WHERE email = ?";
                $stmtUpdate = $mysqli->prepare($sqlUpdate);
                $stmtUpdate->bind_param('ds', $newTotal, $email);
                $stmtUpdate->execute();
            }
            else{
                $sqlInsert = "INSERT INTO donateurs (nom, email, total_donations) VALUES (?, ?, ?)";
                $stmtInsert = $mysqli->prepare($sqlInsert);
                $stmtInsert->bind_param('ssd', $name, $email, $amount);
                $stmtInsert->execute();
            }
        }
        echo "<div style='text-align:center;'><h1 style='text-shadow:2px 2px 0px rgba(255,255,255,0.7);'>Merci à vous ".$name." de nous avoir donné l'accès à votre compte bancaire !<h1><div>";
        echo "<a href='index.html'><p>Retour au menu</p></a>";
        $mysqli->close();
	?>

    </body>
</html>
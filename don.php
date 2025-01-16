<!DOCTYPE html>
<html lang="fr">
    <head>     
    	<meta charset="UTF-8">
    	<title>Descriptif chat</title>

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

    <body>

    </body>
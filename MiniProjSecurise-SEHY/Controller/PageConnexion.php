<?php
    session_start();
    require('..\Model\Fonctions.php');
    $result=Select("adherent");

    $verif = isset ($_POST['BtnCo']);
    if (($verif == true) && ($_POST['BtnCo']=='Connexion'))
    {
        $mail = filter_input(INPUT_POST,'mail',FILTER_VALIDATE_EMAIL);
        $mdp = filter_input(INPUT_POST,'mdp',FILTER_SANITIZE_STRING);

        $_SESSION['email'] = $_POST['mail'];
        $_SESSION['MDP'] = $_POST['mdp'];

        $select = SelectUnCritereAES('adherent', 'AdresseMail', $_SESSION['email']);

        if($line=$select->fetch())
        {
            $verifmdp = password_verify($_SESSION['MDP'], $line['MotDePasse']);
            
            if($verifmdp == 1)
            {
                $str = 'Location: PageConReussie.php';
                header ($str);
            }
            else
            {
                echo "mot de passe incorrecte";
            }
        }
    }

    require('..\View\PageConnexionView.php');
?>
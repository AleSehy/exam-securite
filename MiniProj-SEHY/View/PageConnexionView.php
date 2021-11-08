<?php
    require('..\Model\Fonctions.php');

    $titlepage = "Page de connexion";
    $style = "style.css";
    $title = "Connexion";
    $soustitle = "";
    
    ob_start();
    echo '<form method ="POST">';
    echo '<label>Adresse mail : </label>';
    echo '<input required name="mail"/> <br /><br />';
    echo '<label>Mot de passe : </label>';
    echo '<input required type="password" name="mdp"/><br /><br />';
    echo '<input type="submit" value="Connexion" name="BtnCo"/>';
    echo '</form><br />';
    $content=ob_get_clean();
    
    
    
    $result=Select("adherent");

    $verif = isset ($_POST['BtnCo']);
    if (($verif == true) && ($_POST['BtnCo']=='Connexion'))
    {
        $mail=$_POST['mail'];
        

        $connect=Connexion();               
        
        
        $requete =("select * from adherent where AdresseMail = ".$mail." and MotDePasse = ".$_POST['mdp']);

            if($connect ->query($requete)==true)
            {
                $str = 'Location: PageConReussieView.php';
                header ($str);
            }
            else
            {
                echo "L'adresse : ".$mail." et/ou le mot de passe est incorrecte";
            }
        }
        Deconnexion($connect);
    require('..\View\template.php');
?>
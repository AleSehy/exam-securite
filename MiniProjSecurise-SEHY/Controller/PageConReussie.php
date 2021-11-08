<?php
    session_start();
    require('..\Model\Fonctions.php');

    if ($_SESSION['email'] != NULL) 
    {
        require('..\View\PageConReussieView.php');

        $verif = isset ($_POST['BtnDeco']);
        if (($verif == true) && ($_POST['BtnDeco']=='Deconnexion'))
        {
            session_destroy();
            $str = 'Location:PageConnexion.php';
            header ($str);
        }
    }
    else
    {
        $str = 'Location: PageConnexion.php';
        header ($str);
    }
?>
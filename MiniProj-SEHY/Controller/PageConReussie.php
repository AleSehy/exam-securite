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
            $str = 'Location: ..\View\PageConnexionView.php';
        header ($str);
        }
    }
    else
    {
        $str = 'Location: ..\View\PageConnexionView.php';
        header ($str);
    }
?>
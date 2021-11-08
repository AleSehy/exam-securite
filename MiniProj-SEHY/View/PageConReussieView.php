<?php
    $titlepage = "Connexion reussie";
    $style = "style.css";
    $title = "Connexion reussie";
    $soustitle = "Connexion reussie";

    ob_start();
    echo '<form method ="POST">';
    echo '<label>bienvenue !</label> <br />';
    echo '<input type="submit" value="Deconnexion" name="BtnDeco"/><br /><br />';
    echo '</form><br />';
    $content=ob_get_clean();
    
    require('..\View\template.php');
?>
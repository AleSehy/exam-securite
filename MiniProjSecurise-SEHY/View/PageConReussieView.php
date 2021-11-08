<?php
    $titlepage = "Connexion reussie";
    $style = "style.css";
    $title = "Connexion reussie";
    $soustitle = "Connexion reussie";

    ob_start();
    echo '<form method ="POST">';
    echo '<label>Login : '.htmlentities($_SESSION['email']).'</label> <br />';
    echo '<label>Mot de passe : '.htmlentities($_SESSION['MDP']).'</label><br />';
    echo '<input type="submit" value="Deconnexion" name="BtnDeco"/><br /><br />';
    echo '</form><br />';
    $content=ob_get_clean();
    
    require('..\View\template.php');
?>
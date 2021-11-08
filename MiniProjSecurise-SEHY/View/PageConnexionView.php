<?php
    $titlepage = "Page de connexion";
    $style = "style.css";
    $title = "Connexion";
    $soustitle = "";
    
    ob_start();
    echo '<form method ="POST">';
    echo '<label>Adresse mail : </label>';
    echo '<input required type="email" name="mail"/> <br /><br />';
    echo '<label>Mot de passe : </label>';
    echo '<input required type="password" name="mdp"/><br /><br />';
    echo '<input type="submit" value="Connexion" name="BtnCo"/>';
    echo '</form><br />';
    $content=ob_get_clean();
    
    require('..\View\template.php');
?>
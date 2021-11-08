<?php
require('..\Model\Fonctions.php');
$result=Select("adherent");

while($line = $result-> fetch())
{
    $hash=password_hash($line['MotDePasse'], PASSWORD_BCRYPT);

    $mail = $line['AdresseMail'];
    $hachage="update adherent set MotDePasse = '".$hash."' where AdresseMail = '".$mail."'" ;
    
    $updateDelete = UpdateDelete($hachage);
}
echo "Fin du hachage";
?>
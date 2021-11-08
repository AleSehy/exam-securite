<?php
    require('..\Model\Fonctions.php');
    $result=Select("adherent");

    while($line = $result-> fetch())
    {
        $crypt="AES_ENCRYPT('".$line['AdresseMail']."','clefsecrete')";

        $cryptage="update adherent set AdresseMail = ".$crypt." where AdresseMail = '".$line['AdresseMail']."'" ;
        $updateDelete = UpdateDelete($cryptage);
    }

?>
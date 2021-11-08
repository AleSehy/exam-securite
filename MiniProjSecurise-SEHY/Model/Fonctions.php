<?php
    function Connexion ( ) 
    {       
        $serveur="localhost";   //Nom du serveur         
        $nom="root";    //Nom utilisateur        
        $motpasse="root";    //Mot de passe        
        $base="MiniProjSecuSehy";    //Nom de la base de données       
        Try       
        {  
            $connect = new PDO("mysql:host=".$serveur.";dbname=".$base, $nom, $motpasse);       
        }      
        Catch(PDOException $e)      
        {  
            echo "Impossible de se connecter!".$e -> getMessage();      
        }     
        return $connect; 
    } 
    
    function Deconnexion ($connect) 
    {  
        if  ($connect)   
        $connect = NULL; 
    } 

    function Select($table) 
    { 
        $connect=Connexion();  
        $query="select * from " . $table;              
        $result = $connect -> query($query); 
        Deconnexion($connect); 
        return $result; 
    }

    function SelectUnCritere($table, $champ1, $critere1)   
    {  
        $connect=Connexion();                            
        $query=$connect ->prepare("select * from ".$table." where ".$champ1." = ?") ; // ? = marqueur      
        $query -> execute(array($critere1));     //Respecter l’ordre des marqueurs     
        Deconnexion($connect);      
        return $query;
    } 

    function SelectCritere($table, $champ1, $champ2, $critere1, $critere2)   
    {  
        $connect=Connexion();                            
        $query=$connect ->prepare("select * from ".$table." where ".$champ1." = ".$critere1." and ".$champ2." = ".$critere2) ; // ? = marqueur      

        Deconnexion($connect);      
        return $query;
    } 
    
    function UpdateDelete($query) 
    {  
        $connect=Connexion();
        $query = $connect->prepare($query); 
        $result = $query->execute(); 
        Deconnexion($connect);  
        return $result; 
    }

    function Insert($tableau, $query)
    { 
       $connect=Connexion(); 
       $query = $connect->prepare($query); 
       $result =$query->execute($tableau);
       Deconnexion($connect);
       return $result;
   } 

   function SelectUnCritereAES($table, $champ1, $critere1)   
    {  
        $connect=Connexion();               
        $crypt="AES_ENCRYPT('".$critere1."','clefsecrete')";             
        $query=$connect ->prepare("select * from ".$table." where ".$champ1." = ".$crypt) ; // ? = marqueur      
        $query -> execute(array($critere1));     //Respecter l’ordre des marqueurs     
        Deconnexion($connect);      
        return $query;
    } 
?>
<?php

//$ficheiro=fopen('cookie.txt','w');
//fwrite($ficheiro,'0');
//fclose($ficheiro);

if(isset($_COOKIE['pessoas'])){
$valor=file('cookie.txt',FILE_IGNORE_NEW_LINES| FILE_SKIP_EMPTY_LINES);


}else{
    
    $valor=file('cookie.txt',FILE_IGNORE_NEW_LINES| FILE_SKIP_EMPTY_LINES);
    $ficheiro=fopen('cookie.txt','w');
    fwrite($ficheiro,++$valor[0]);
    fclose($ficheiro);

    echo "<h1>Existem $valor[0] Pessoas online </h1>";
    
setcookie('pessoas',true,time()+ 24*3600*365);

    

}



?>
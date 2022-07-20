<?php
session_start();
?>

<?php if($_SERVER['REQUEST_METHOD']!='POST' || !isset( $_POST['resposta']) ||$_POST['resposta']=="" ):?>
<?php else :?>
<?php if( $_SESSION["autor"]==$_POST['resposta']) :?>
<script>
        window.alert("Resposta Certa. Continua Assim! ");
</script>

<?php else:?> 
        <h1 class="alert alert-success  text-center p-2">O Autor Certo  da Obra <?php echo  $_SESSION["ultima"];?> é <?php echo $_SESSION["autor"]; ?>  </h1>

<script>

window.alert("Resposta Errada ! ");




window.alert("Confirmar ! ");
</script>

<?php endif; ?>

<?php endif; ?>
<?php include_once("index.php") ?>


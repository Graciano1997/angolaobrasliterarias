<?php
$cabecalho = "Usol Jogo";
include_once("views/frmCabecalho.php");
include_once("game.php") ;
include_once("cookieTime.php") ;?>
<div class="container ">
        <h1 id="yara" class="text-end">Joga  Agora!</h1>
<br>
        <h1 id="yara" class="text-center">Quem é o Author da Obra " <?php echo $pergunta; ?> "? </h1>
<br>
        <form action="tratar.php" method="POST">
                <div class="row">
        <div class="col-sm-6 col-md-6">
        <div class="col-sm-12 col-md-12 col-lg-12  text-start ">
        <input type="radio" name="resposta" id="rbopcao5" value="António Jacinto" required>
        <label for="rbopcao5"><h4>António Jacinto</h4></label>
        </div>
        
          <div class="col-sm-12 col-md-12 col-lg-12  text-start ">
          <input type="radio" name="resposta" id="rbopcao4" value="António Agostinho Neto" required>
          <label for="rbopcao4"><h4>António Agostinho Neto</h4></label>
        </div>

        <div class="col-sm-12 col-md-12 col-lg-12  text-start ">
        <input type="radio" name="resposta" id="rbopcao10" value="Artur Carlos Pestana (Pepetela)" required>
        <label for="rbopcao10">
        <h4>Artur Carlos Pestana (Pepetela)</h4></label>
        </div>

        <div class="col-sm-12 col-md-12 col-lg-12  text-start ">
        <input type="radio" name="resposta" id="rbopcao7" value="Boaventura Cardoso" required>
        <label for="rbopcao7"><h4>Boaventura Cardoso</h4></label>
        </div>        

        <input type="radio" name="resposta" id="rbopcao1" value="Cremilde de Lima" required>
        <label for="rbopcao1"><h4>Cremilde de Lima</h4></label>
        <div class="col-sm-12 col-md-12 col-lg-12  text-start ">
        </div>

        <div class="col-sm-12 col-md-12 col-lg-12  text-start ">
                <input type="radio" name="resposta" id="rbopcao2" value="Costa Abrante Andrade" required>
        <label for="rbopcao2"><h4>Costa Abrante Andrade</h4></label>
        </div>
        
        <div class="col-sm-12 col-md-12 col-lg-12  text-start ">
                <input type="radio" name="resposta" id="rbopcao13" value="Henriques Abrangente" required>
        <label for="rbopcao13"><h4>Henriques Abrangente</h4></label>
        </div>

        <div class="col-sm-12 col-md-12 col-lg-12  text-start ">
                <input type="radio" name="resposta" id="rbopcao3" value="José Mena Abrantes" required>
         <label for="rbopcao3"><h4>José Mena Abrantes</h4></label>
          </div>

         </div>

         
        <div class="col-sm-6 col-md-6">

        <div class="col-sm-12 col-md-12 col-lg-12  text-end ">
        <label for="rbopcao"><h4>João Melo</h4></label>
        <input type="radio" name="resposta" id="rbopcao" value="João Melo" required>             
       </div>

        <div class="col-sm-12 col-md-12 col-lg-12  text-end ">
        <label for="rbopcao12"><h4>Jofre Rocha</h4></label>
        <input type="radio" name="resposta" id="rbopcao12" value="Jofre Rocha" required>
        </div>        
        <div class="col-sm-12 col-md-12 col-lg-12  text-end ">
        <label for="rbopcao6"><h4>José Luandino Viera</h4></label>
        <input type="radio" name="resposta" id="rbopcao6" value="José Luandino Viera" required>
        </div>


        
        <div class="col-sm-12 col-md-12 col-lg-12  text-end ">
        <label for="rbopcao9"><h4>Manuel Rui Monteiro</h4></label>
        <input type="radio" name="resposta" id="rbopcao9" value="Manuel Rui Monteiro" required>
        </div>
        
 
        <div class="col-sm-12 col-md-12 col-lg-12  text-end ">
        <label for="rbopcao11"><h4>Mendes de Carvalho ( Wanhenga Xitu)</h4></label>
        <input type="radio" name="resposta" id="rbopcao11" value="Mendes de Carvalho ( Wanhenga Xitu)" required>
        </div>

        <div class="col-sm-12 col-md-12 col-lg-12  text-end ">
        <label for="rbopcao14"><h4>Óscar Bento Ribas</h4></label>
        <input type="radio" name="resposta" id="rbopcao14" value="Óscar Bento Ribas" required>
        </div>

        <div class="col-sm-12 col-md-12 col-lg-12  text-end ">
        <label for="rbopcao8"><h4>Viriato da Cruz</h4></label>
        <input type="radio" name="resposta" id="rbopcao8" value="Viriato da Cruz" required>
        </div>
        </div>
  
        <div class="col-sm-12 col-md-12 col-lg-12   ">
        <br>

        <p class="text-center "><button type="submit" class="btn btn-primary rounded-pill">Responder</button></p>
        </div>


        </form>
        
  
<hr>

<div class="col-sm-12 col-md-12 col-lg-12  text-end ">
        
        <p class="text-end badge bg-danger ">Acessado Por: <?php echo $valor[0] ?> Pessoas</p> </div>
<div class="col-sm-12 col-md-12 col-lg-12  text-start ">
        <br>

        <p class="text-center ">Todos Os direitos Reservados de Usol Corporation 2022</p>
        <p class="text-center ">Email:henriquegrauchia@gmail.com | Tel. 935 636 086</p>
        </div>

</div>
</div>

<?php
        $_SESSION["ultima"] = $pergunta;
?>


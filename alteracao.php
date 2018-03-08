<?php
    include 'conn.php';
    include 'header.php';

    $idhorario_disciplina =  $_GET['id'];
//    $professor = $_GET['id2'];
//    $materia = $_GET['id3'];
?>
<form  id="form1" name="form1" class="form-horizontal" method="post" action="alteracao_gravar.php">
  <div id="panel" class="container" style="width: 50%" >

      <div id="panel2" class="container" style="width: 50%">
          <label>DISCIPLINA:</label>
          <?php

          echo "<input type='hidden' name='id_master' value=" . $idhorario_disciplina . " />";

          $result2 = $conn->query( "select iddisciplina, sigla, descricao from disciplinas order by sigla;" );

          echo "<select id='disciplinas' name='disciplinas' class=\"form-control\" > ";
          while ( $row2 = $result2->fetch_assoc() ) {
              unset( $id2, $name2 );
              $id2        = $row2['iddisciplina'];
              $sigla      = $row2['sigla'];
              $descricao2 = $row2['descricao'];
              echo '<option value="' . $id2 . '">' . $sigla . " - " . $descricao2 . '</option>';
          }

          echo "</select>";

          ?>
      </div>

      <div id="panel3" class="container" style="width: 50%">
          <label>PROFESSOR:</label>
          <?php
          $result2 = $conn->query( "select * from professores order by nome;" );

          echo "<select id='professores' name='professores' class=\"form-control\" > ";
          while ( $row2 = $result2->fetch_assoc() ) {
              unset( $id2, $name2 );
              $id2   = $row2['idprofessor'];
              $sigla = $row2['nome'];
              echo '<option value="' . $id2 . '">' . $sigla . '</option>';
          }
          echo "</select>";
          ?>
      </div>

      <div style="text-align: center; margin-top: 50px;">
          <input type="submit" class="btn btn-success btn-large" value="UPDATE" id="alter" name="alter">
      </div>

  </div>
</form>

<?php include 'footer.php' ; ?>



<?php
    include 'conn.php';
    include 'header.php';
?>

<form  id="form1" name="form1" class="form-horizontal" method="get" action="alteracao.php">
        <div id="panel" class="container" style="width: 50%" >

        <div class="container">
           <h1>MANUTENÇÕES DE HORÁRIOS DE AULAS</h1>
        </div>

        <div style="text-align: left; margin-top: 20px;">
            <input type="button" onClick="window.open('cadastro.php')" class="btn btn-success btn-large" value="REGISTER" id="cadastrar" name="cadastrar">
        </div>

        <br>

        <label>CURSO:</label>

		<?php

            $result = $conn->query("select idturma, descricao from turmas where ativo=1 order by descricao; ");

            echo "<select id='coursesReloaded' name='coursesReloaded' class=\"form-control\" > ";
            echo "<option value='0'> SELECIONE O CURSO ... </option>";
            while ($row = $result->fetch_assoc())
            {
                unset($id, $name);
                $id = $row['idturma'];
                $descricao = $row['descricao'];
                echo '<option value="' . $id . '">' . $descricao . '</option>';
            }
            echo "</select>";

            ?>


            <div id="result" style="margin-top: 30px;"></div>

        </div>

</form>

<?php include 'footer.php' ; ?>



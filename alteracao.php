<?php
    include 'conn.php';
    include 'header.php';
?>

<!--    <form  id="form1" name="form1" class="form-horizontal" method="get" action="index.php">-->
        <div id="panel" class="container" style="width: 50%" >

	    <center><b><label>Aten&ccedil;&atilde;o Aluno, selecione o curso desejado abaixo para listar o hor&aacute;rio de aula.</label></b></center>	
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



<!--    </form>-->

<?php include 'footer.php' ; ?>



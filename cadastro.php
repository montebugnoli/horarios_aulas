<?php
    include 'conn.php';
    include 'header.php';
?>

        <div id="panel" class="container" style="width: 50%" >

            <label>CURSO:</label>
            <?php
            $result = $conn->query("SELECT idturma, descricao FROM TURMAS;");

            echo "<select id='courses' name='courses' class=\"form-control\" > ";
            while ($row = $result->fetch_assoc())
            {
                unset($id, $name);
                $id = $row['idturma'];
                $descricao = $row['descricao'];
                echo '<option value="' . $id . '">' . $descricao . '</option>';
            }
            echo "</select>";



            ?>
        </div>

    <div id="panel2" class="container" style="width: 50%" >

    <label>DISCIPLINA:</label>

    <?php

    $result2 = $conn->query("SELECT iddisciplina, sigla, descricao FROM DISCIPLINAS ORDER BY sigla;");

    echo "<select id='disciplinas' name='disciplinas' class=\"form-control\" > ";
    while ($row2 = $result2->fetch_assoc())
    {
        unset($id2, $name2);
        $id2 = $row2['iddisciplina'];
        $sigla= $row2['sigla'];
        $descricao2= $row2['descricao'];
        echo '<option value="' . $id2 . '">'. $sigla . " - "  . $descricao2 . '</option>';
    }
    echo "</select>";

    ?>

    </div>

    <div id="panel3" class="container" style="width: 50%" >

    <label>PROFESSOR:</label>

    <?php


    $result2 = $conn->query("SELECT * FROM PROFESSORES ORDER BY nome;");

    echo "<select id='professores' name='professores' class=\"form-control\" > ";
    while ($row2 = $result2->fetch_assoc())
    {
        unset($id2, $name2);
        $id2 = $row2['idprofessor'];
        $sigla= $row2['nome'];
        echo '<option value="' . $id2 . '">'. $sigla . '</option>';
    }
    echo "</select>";

    ?>

    </div>

    <div id="panel4" class="container" style="width: 50%" >

    <label>HORÁRIO:</label>

    <?php


    $result2 = $conn->query("SELECT * FROM HORARIOS ORDER BY INICIO;");

    echo "<select id='horarios' name='horarios' class=\"form-control\" > ";
    while ($row2 = $result2->fetch_assoc())
    {
        unset($id2, $name2);
        $id2 = $row2['idhorario'];
        echo '<option value="' . $id2 . '">'. $row2['periodo'] . " - " . $row2['descricao'] . " - " . $row2['inicio'] ." às ". $row2['fim'] . '</option>';
    }
    echo "</select>";
    ?>
    </div>

    <div id="panel5" class="container" style="width: 50%" >

    <label>DIA:</label>

    <?php

    echo "<select id='dias' name='dias' class=\"form-control\" > ";
    $k = 0;
    while ($k < 6)
    {
        echo '<option value="' . $k . '">'. DIAS[$k] . '</option>';
        $k++;
    }
    echo "</select>";
    ?>
    </div>

    <div style="text-align: center; margin-top: 50px;">
        <a  class="btn btn-success btn-large" role="button">SEND TO BACK!</a>
    </div>


<?php include 'footer.php' ; ?>



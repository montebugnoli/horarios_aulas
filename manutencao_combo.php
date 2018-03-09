<?php

include 'conn.php';

function processDrpdown($idTurma)
{
    global $conn;

    echo "<table width='100%' class='table table-striped'><tr>";

    for ($k = 0; $k<=5; $k++)
    {
        $daylyQuery = "select hd.idhorario_disciplina, h.periodo periodo, h.descricao aula, " .
            "h.inicio inicio, h.fim fim, d.sigla materia, p.nome professor " .
            "from ifsp_horarios.horarios_disciplinas hd " .
            "inner join ifsp_horarios.disciplinas d on (hd.iddisciplina=d.iddisciplina) " .
            "inner join ifsp_horarios.horarios h on (hd.idhorario=h.idhorario) " .
            "inner join ifsp_horarios.turmas t on (hd.idturma=t.idturma) " .
            "inner join ifsp_horarios.professores p on (hd.idprofessor=p.idprofessor) " .
            "where (hd.idturma = " . $idTurma . ") and (hd.diasemana = " . $k . " )" .
            "order by hd.diasemana, periodo, inicio ";

        $result3 = $conn->query($daylyQuery);
	
        if (mysqli_num_rows($result3) > 0)
        {
            echo "<th colspan='9'><center>". DIAS[$k] . "</center></th>";

            while ($rows = mysqli_fetch_array($result3, MYSQLI_ASSOC)) {
                echo "<tr>";
                foreach ($rows as $data)
                {
                    echo "<td align='center'>" . $data . "</td>";
                }
                echo "<td align='center'> <a href=\"alteracao.php?id=".$rows['idhorario_disciplina'] . "&id2=". $rows['professor'] . "&id3=" . $rows['materia']   . "\"    class=\"btn btn-warning\">ALTER</a> </td>";
                echo "<td align='center'> <a \href='javascript:func()' onclick='confirmacao(" .$rows['idhorario_disciplina'] . ")'" . "class=\"btn btn-danger\">DELETE</a> </td>";
            }
            echo "</tr>";
        }
    }
    echo "</table>";
}

if ($_POST['idTurma']) {
    processDrpdown($_POST['idTurma']);
}


<?php

include 'conn.php';

function processDrpdown($idTurma)
{
    global $conn;

    echo "<table width='100%' class='table table-striped'><tr>";

    for ($k = 0; $k<=5; $k++)
    {
        $daylyQuery = "SELECT H.periodo PERIODO, H.descricao AULA, " .
            "H.inicio INICIO, H.fim FIM, D.sigla MATERIA, P.nome PROFESSOR " .
            "FROM ifsp_horarios.Horarios_disciplinas HD " .
            "INNER JOIN ifsp_horarios.disciplinas D ON (HD.iddisciplina=D.iddisciplina) " .
            "INNER JOIN ifsp_horarios.horarios H ON (HD.idhorario=H.idhorario) " .
            "INNER JOIN ifsp_horarios.turmas T ON (HD.idturma=T.idturma) " .
            "INNER JOIN ifsp_horarios.professores P ON (HD.idprofessor=P.idprofessor) " .
            "WHERE (HD.idturma = " . $idTurma . ") AND (HD.diasemana = " . $k . " )" .
            "ORDER BY HD.diasemana, PERIODO, INICIO ";

        $result3 = $conn->query($daylyQuery);

        if (mysqli_num_rows($result3) > 0)
        {
            echo "<th align='center'>" . DIAS[$k] . "</th>";

            while ($rows = mysqli_fetch_array($result3, MYSQLI_ASSOC)) {
                echo "<tr>";
                foreach ($rows as $data) {
                    echo "<td align='center'>" . $data . "</td>";
                }
            }
            echo "</tr>";
        }
    }
    echo "</table>";
}

if ($_POST['idTurma']) {
    processDrpdown($_POST['idTurma']);
}


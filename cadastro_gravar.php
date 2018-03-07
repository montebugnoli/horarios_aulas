<?php
/**
 * Created by PhpStorm.
 * User: thiagomontebugnoli
 * Date: 01/03/2018
 * Time: 14:19
 */
include 'conn.php';

$curso = $_POST['courses'];
$disciplina = $_POST['disciplinas'];
$professor = $_POST['professores'];
//$horario = $_POST['horarios'];
//$dia = $_POST['dias'];

/*
$sql = "INSERT INTO HORARIOS_DISCIPLINAS (iddisciplina, idturma, idhorario, idprofessor, diasemana) ".
       "VALUES (". $disciplina. "," . $curso . "," . $horario ."," . $professor ."," . $dia.")";

if (mysqli_query($conn, $sql))
{
    echo "Registro gravado com sucesso!";
}
else
{
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}*/

foreach ($_POST['manha'] as $m) {
	$val = explode("_", $m);
	$sql = "INSERT INTO HORARIOS_DISCIPLINAS (iddisciplina, idturma, idhorario, idprofessor, diasemana) ".
	       "VALUES (". $disciplina. "," . $curso . "," . $val[0] ."," . $professor ."," . $val[1].")";
	mysqli_query($conn, $sql);
}

foreach ($_POST['tarde'] as $m) {
	$val = explode("_", $m);
	$sql = "INSERT INTO HORARIOS_DISCIPLINAS (iddisciplina, idturma, idhorario, idprofessor, diasemana) ".
	       "VALUES (". $disciplina. "," . $curso . "," . $val[0] ."," . $professor ."," . $val[1].")";
	mysqli_query($conn, $sql);
}

foreach ($_POST['noite'] as $m) {
	$val = explode("_", $m);
	$sql = "INSERT INTO HORARIOS_DISCIPLINAS (iddisciplina, idturma, idhorario, idprofessor, diasemana) ".
	       "VALUES (". $disciplina. "," . $curso . "," . $val[0] ."," . $professor ."," . $val[1].")";
	mysqli_query($conn, $sql);
}

?>
<script>
	//alert('Registro gravado com sucesso!');
	window.location.href = 'cadastro.php';
</script>

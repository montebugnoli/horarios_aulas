<?php
    include 'conn.php';
    include 'header.php';


$disciplina = $_POST['disciplinas'];
$professor = $_POST['professores'];
$id = $_POST['id_master'];

$sql = "update horarios_disciplinas set idprofessor=" . $professor . ", iddisciplina=" . $disciplina .
       " where idhorario_disciplina=" .$id;
mysqli_query($conn, $sql);

?>

<script>
    window.location.href = 'manutencao.php';
</script>

<?php include 'footer.php' ; ?>



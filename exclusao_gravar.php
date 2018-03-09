<?php
    include 'conn.php';
    include 'header.php';

    $id = $_GET['id'];
    $sql = "delete from horarios_disciplinas where idhorario_disciplina=" .$id;
    mysqli_query($conn, $sql);
?>

<script>
    window.location.href = 'manutencao.php';
</script>

<?php include 'footer.php' ; ?>



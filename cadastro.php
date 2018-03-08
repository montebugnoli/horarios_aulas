<?php
include 'conn.php';
include 'header.php';
?>

<form method="post" action="cadastro_gravar.php">

<!--    <div style="text-align: left; margin-top: 20px;">-->
<!--        <input type="button" onClick="window.open('manutencao.php')" class="btn btn-success btn-large" value="MAINTENANCE" id="manutencao" name="manutencao">-->
<!--    </div>-->

    <div id="panel" class="container" style="width: 50%">
        <label>CURSO:</label>
		<?php
		$result2 = $conn->query( "SELECT idturma, descricao FROM TURMAS ORDER BY descricao;" );

		echo "<select id='courses' name='courses' class=\"form-control\"> ";
		while ( $row = $result2->fetch_assoc() ) {
			unset( $id, $name );
			$id        = $row['idturma'];
			$descricao = $row['descricao'];
			echo '<option value="' . $id . '">' . $descricao . '</option>';
		}
		echo "</select>";
		?>
    </div>

    <div id="panel2" class="container" style="width: 50%">
        <label>DISCIPLINA:</label>
		<?php
		$result2 = $conn->query( "SELECT iddisciplina, sigla, descricao FROM DISCIPLINAS ORDER BY sigla;" );

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
		$result2 = $conn->query( "SELECT * FROM PROFESSORES ORDER BY nome;" );

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
    <!--
    <div id="panel4" class="container" style="width: 50%">
        <label>HORÁRIO:</label>
		<?php
		$result2 = $conn->query( "SELECT * FROM HORARIOS ORDER BY INICIO;" );

		echo "<select id='horarios' name='horarios' class=\"form-control\" > ";
		while ( $row2 = $result2->fetch_assoc() ) {
			unset( $id2, $name2 );
			$id2 = $row2['idhorario'];
			echo '<option value="' . $id2 . '">' . $row2['periodo'] . " - " . $row2['descricao'] . " - " . $row2['inicio'] . " às " . $row2['fim'] . '</option>';
		}
		echo "</select>";
		?>
    </div>

    <div id="panel5" class="container" style="width: 50%">
        <label>DIA:</label>
		<?php
		echo "<select id='dias' name='dias' class=\"form-control\" > ";
		$k = 0;
		while ( $k < 6 ) {
			echo '<option value="' . $k . '">' . DIAS[ $k ] . '</option>';
			$k ++;
		}
		echo "</select>";
		?>
    </div>
    -->

    <div class="container" style="width: 50%; margin-top: 30px;">
        <label>MANHÃ:</label>

        <table class="table table-striped" style="text-align: center">
            <thead>
            <tr>
                <th><!-- VAZIO --></th>
				<?php
				// CABECALHO
				foreach ( DIAS as $dia ) {
					echo '<th>' . $dia . '</th>';
				}
				?>
            </tr>
            </thead>
            <tbody>
				<?php

				$rs = $conn->query( "SELECT * FROM horarios WHERE periodo='MANHA'" );
				while($h = $rs->fetch_object()) {
				    echo '<tr>';
				    echo '<th>' . $h->descricao .' (' . $h->inicio . ' - ' . $h->fim .')</th>';
					for($i=0; $i<6; $i++) {
					    echo '<td><input type="checkbox" name="manha[]" value="'.$h->idhorario.'_'.$i.'"/></td>';
                    }
                    echo '</th>';
                }

				?>
            </tbody>
        </table>
    </div>

    <div class="container" style="width: 50%; margin-top: 30px;">
        <label>TARDE:</label>

        <table class="table table-striped" style="text-align: center">
            <thead>
            <tr>
                <th><!-- VAZIO --></th>
				<?php
				// CABECALHO
				foreach ( DIAS as $dia ) {
					echo '<th>' . $dia . '</th>';
				}
				?>
            </tr>
            </thead>
            <tbody>
			<?php

			$rs = $conn->query( "SELECT * FROM horarios WHERE periodo='TARDE'" );
			while($h = $rs->fetch_object()) {
				echo '<tr>';
				echo '<th>' . $h->descricao .' (' . $h->inicio . ' - ' . $h->fim .')</th>';
				for($i=0; $i<6; $i++) {
					echo '<td><input type="checkbox" name="tarde[]" value="'.$h->idhorario.'_'.$i.'" /></td>';
				}
				echo '</th>';
			}

			?>
            </tbody>
        </table>
    </div>

    <div class="container" style="width: 50%; margin-top: 30px;">
        <label>NOITE:</label>

        <table class="table table-striped" style="text-align: center">
            <thead>
            <tr>
                <th><!-- VAZIO --></th>
				<?php
				// CABECALHO
				foreach ( DIAS as $dia ) {
					echo '<th>' . $dia . '</th>';
				}
				?>
            </tr>
            </thead>
            <tbody>
			<?php

			$rs = $conn->query( "SELECT * FROM horarios WHERE periodo='NOITE'" );
			while($h = $rs->fetch_object()) {
				echo '<tr>';
				echo '<th>' . $h->descricao .' (' . $h->inicio . ' - ' . $h->fim .')</th>';
				for($i=0; $i<6; $i++) {
					echo '<td><input type="checkbox" name="noite[]" value="'.$h->idhorario.'_'.$i.'"" /></td>';
				}
				echo '</th>';
			}

			?>
            </tbody>
        </table>
    </div>

    <div style="text-align: center; margin-top: 50px;">
        <input type="submit" class="btn btn-success btn-large" value="SEND TO BACK!" id="cadastrar" name="cadastrar">
    </div>

</form>


<?php include 'footer.php'; ?>



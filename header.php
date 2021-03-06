<!DOCTYPE html>
<html>
<head lang="pt_BR">
    <meta charset="UTF-8">
    <title>Horários de Aulas</title>
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .header {
            padding-top: 30px;
            padding-bottom: 20px;
            font-size: 24px;
            text-align: left;
            color: #b3e3ae;
            text-shadow: 0 1px 0 rgba(0, 0, 0, .1);
            /*background-color: #66a05d;*/
            background-color: #2b542c;
            margin-bottom: 40px;
        }

        .header h1 {
            color: #ffffff;
            font-size: 30px;

        }

        .logo {
            text-align: center;
            vertical-align: middle;
            padding-top: 17px;
        }

        .footer {
            padding-top: 10px;
            padding-bottom: 20px;
            font-size: 15px;
            text-align: center;
            color: black;
            text-shadow: 0 1px 0 rgba(0,0,0,.1);
            background-color: #2b542c;
            margin-top: 40px;
        }
        .row {
            margin-bottom: 30px;
        }
    </style>

    <script src="bower_components/jquery/dist/jquery.min.js"> </script>
    <script>
        $(document).ready(function() {
            $('#courses').on("change", function() {
                $.ajax({
                    type: "POST",
                    url: 'combo.php',
                    data: { 'idTurma': $(this).val() },
                    success: function(data) {
                        $("#result").html(data);
                    }
                })
            });
        });
    </script>

    <script>
        $(document).ready(function() {
            $('#coursesReloaded').on("change", function() {
                $.ajax({
                    type: "POST",
                    url: 'manutencao_combo.php',
                    data: { 'idTurma': $(this).val() },
                    success: function(data) {
                        $("#result").html(data);
                    }
                })
            });
        });
    </script>

    <script language="Javascript">
        function confirmacao(id) {
            var resposta = confirm("Deseja remover esse horário?");

            if (resposta == true) {
                window.location.href = "exclusao_gravar.php?id="+id;
            }
        }
    </script>

  </head>
<body>
    <div class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-sm-2 logo">
                    <img src="imagens/logo_new.png" alt="IFSP"/>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-10">
                    <h1>Instituto Federal de Educação, Ciência e Tecnologia de São Paulo - Câmpus Avaré</h1>
                    Horários de Aulas
                </div>
            </div>
        </div>
    </div>

        <div class="container" style="width: 100%">


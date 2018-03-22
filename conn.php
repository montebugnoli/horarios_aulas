<?php
/**
 * Created by PhpStorm.
 * User: Administrador
 * Date: 27/02/2018
 * Time: 10:16
 */
$conn = new mysqli('172.16.0.7', 'developer', '9d93a8', 'ifsp_horarios')
or die ('Cannot connect to db');
mysqli_set_charset($conn,"utf8");


const DIAS = array(
    "SEGUNDA-FEIRA",
    "TERÇA-FEIRA",
    "QUARTA-FEIRA",
    "QUINTA-FEIRA",
    "SEXTA-FEIRA",
    "SÁBADO");

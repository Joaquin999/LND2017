<?php
require_once 'conexionPDO.php';
$pdo = conectar();
session_start();

$borra = false;

if (isset($_POST["delete"]) and isset($_POST["valor"])) {

echo '<form method="POST">
  <input type="submit" value="Borrar" name="borra"/>
  <a href="index.php"><button>Cancelar</button></a>
</form>';

$_SESSION["delete"]=$_POST["delete"];
$_SESSION["valor"]=$_POST["valor"];

}

if(isset($_POST["borra"])){
  $borra = true;
}
  ?>

  <?php
  if (isset($_SESSION["delete"]) and isset($_SESSION["valor"]) and $borra) {
    $sql = "Delete from autos where auto_id=:zip";
    $str = $pdo->prepare($sql);
    $str->execute(array(':zip' => $_SESSION["valor"]));
    $_SESSION["msg"]="Registro Borrado!";
    header("Location:index.php");
}

 ?>

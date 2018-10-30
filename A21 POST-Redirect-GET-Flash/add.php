<?php
require_once 'conexionPDO.php';
$pdo = conectar();
session_start();
if (isset($_POST["autoAdd"]) and isset($_POST["makeAdd"]) and isset($_POST["yearAdd"]) and isset($_POST["mileageAdd"]) and $_POST["makeAdd"] != "" and isset($_POST["añadir"])) {
    if (is_numeric($_POST["yearAdd"]) and is_numeric($_POST["mileageAdd"])) {
        $sql = "Insert into autos values(:auto_id,:make,:year,:mileage)";
        $str = $pdo->prepare($sql);
        $str->execute(array(
            ':auto_id' => htmlentities($_POST["autoAdd"]),
            ':make' => htmlentities($_POST["makeAdd"]),
            ':year' => htmlentities($_POST["yearAdd"]),
            ':mileage' => htmlentities($_POST["mileageAdd"])
        ));
        $_SESSION["msg"]="Registro Exitoso";
        header("Refresh:3;index.php");
    }
}
    if (isset($_POST["makeAdd"])) {
        if ($_POST["makeAdd"] == "") {
          $_SESSION["error"]="La marca no debe estar en blanco";
          }
     }
     header("Location:index.php");
?>

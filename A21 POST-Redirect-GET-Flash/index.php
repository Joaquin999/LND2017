<?php
session_start();
isset($_SESSION["nombre"]) ? "" : die("No estás logueado") ;


        require_once 'conexionPDO.php';
        $pdo = conectar();
        $stmt = $pdo->query("Select * from autos");


      if(isset($_SESSION["error"])){
         print "<dialog open style='color: red;background-color: tomato'><p>" .htmlentities($_SESSION['error'])."</p></dialog>\n";
         unset($_SESSION["error"]);
       }
       if(  isset($_SESSION["msg"])){
         print ("<dialog open style='color:white;background-color: green'><p>".htmlentities($_SESSION['msg'])."</p></dialog>\n");
         unset($_SESSION["msg"]);
       }



?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body style="text-align: center">
        <?php
        echo "<table border='1'><br/>";
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {

            echo "<tr><td>";
            echo ($row["auto_id"]);
            echo "</td><td>";
            echo ($row["make"]);
            echo "</td><td>";
            echo ($row["year"]);
            echo "</td><td>";
            echo ($row["mileage"]);
            echo "</td><td><form action='del.php' method='POST'>";
            echo "<input type='hidden' name='valor' value='" . $row['auto_id'] . "' />";
            echo "<input type='submit' name='delete' value='borrar'/></td></tr>";
            echo "</form>";
        }
        echo "</table>";
        ?>
        <br/>
        <form method="POST" action="add.php">
            <label for="autoAdd">Auto_ID</label><input name="autoAdd" type="text"/>
            <label for="makeAdd">Make</label><input name="makeAdd" type="text"/>
            <label for="yearAdd">Year</label><input name="yearAdd" type="text"/>
            <label for="mileageAdd">Mileage</label><input name="mileageAdd" type="text"/>
            <input type="submit" name="añadir" value="Añadir"/>
        </form>
        <br/>
        <a href="logOut.php"><button>Cerrar Sesión</button></a>
    </body>
</html>

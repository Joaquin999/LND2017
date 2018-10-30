<html>
    <?php
    session_start();
    $salt = 'XyZzy12 * _';
    $stored_hash = '1a52e17fa899cf40fb04cfc42e6352f1';
    if (isset($_POST['pass']) and isset($_POST['nombre'])) {
      if(strpos($_POST['nombre'],'@')!=false){
        $contraseña = $_POST['pass'];
        $md5 = hash('md5', 'XyZzy12*_' . $contraseña);
        $hashNombre = hash('md5', $_POST['nombre']);
        if($md5 == $stored_hash){
              $_SESSION["msg"]="Te has logueado con éxito!";
              $_SESSION["nombre"]=$_POST["nombre"];
              header("Location: index.php");
              return ;
            }
    }else{
      $_SESSION["error"]="El email debe llevar @";
    }
  }
    ?>
    <?php
    (isset($md5)) and $md5 != "4b42201ceb7acca0295fdb0d8b7cac8a" ? $_SESSION["error"]='Contraseña Incorrecta' : print "<script>err3();</script>";

    ?>
    <head>
        <meta charset="UTF-8">
    </head>
    <body>
        <div style="text-align: center">
            <h1 id='titulo'>Inicio de Sesión</h1>
            <h2 style=" color: red"id='msgError'><?php if(isset($_SESSION["error"])) { echo $_SESSION["error"]; unset($_SESSION['error']);} ?></h2>
            <p id="texto"></p>
            <form method="POST" id='form'>
                <label  for="nombre"/>Nombre<input type="text" name="nombre" />
                <label  for="pass"/>Contraseña<input type="password" name="pass" /><br/><br/>
                <input type="submit"  value="Iniciar Sesión"/>
            </form>
        </div>
    </body>
</html>

<?php include("../login/logueo.php"); ?>
<?php 
    if ($tipo <> 2) {
        echo '<script language="javascript">alert("ACCESO DENEGADO");</script>';
        session_destroy();
        echo "<script>location.href='../../index.html';</script>";
    }
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Usuario</title>
</head>
<body>
	<header>
		<h1>Hola Usuario Regular <?php echo $nombre.' Tipo de Usuario '.$tipo; ?></h1>
		<a href="../login/cerrarSesion.php">Cerrar Sesión</a>
	</header>
</body>
</html>
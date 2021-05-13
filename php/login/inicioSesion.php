<?php 
	include ("conex.php");
	$link = conectarse();

 	$usuario = $_POST['usuario'];
	$password = $_POST['pass'];

	$contra = mysqli_query($link,"SELECT * FROM usuarios WHERE usuario = '$usuario'");

		$fila = mysqli_fetch_array($contra);

		error_reporting(E_ERROR);

		$usu= $fila['usuario'];
		$nombre = $fila['nombreUsuario'];
		$pass = $fila['password'];
		$tipo = $fila['tipo'];

		if ((password_verify($password, $pass)) == true)
		{

		$data = mysqli_query($link,"SELECT id FROM usuarios WHERE usuario = '$usuario'");

		$id = mysqli_fetch_row($data); 

		if(isset($id)){

		session_start();
		
		$_SESSION["usu"] = $usu;
		$_SESSION["nombre"] = $nombre;
		$_SESSION["tipo"] = $tipo;
		$_SESSION["id"] = $id;
		
		echo '<script language="javascript">alert("BIENVENID@ '.$nombre.'");
		</script>';

		if ($tipo == 1){
				echo "<script>location.href='../admin/index.php';</script>";
			}
		if ($tipo == 2){
				echo "<script>location.href='../usuarios/index.php';</script>";
			}
			
		}

	}

	else{
		echo '<script language="javascript">alert("Contraseña incorrecta");</script>';
		echo "<script>location.href='../../index.html';</script>";
	}

 ?>
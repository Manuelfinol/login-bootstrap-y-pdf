<?php include("../login/logueo.php"); ?>
<?php 
    if ($tipo <> 1) {
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
	<title>Administrador</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

	<style>
		.scrollBar{
			max-height: 500px;
    		overflow-y: scroll;
		}
	</style>
</head>
<body>
	<header>
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			  <div class="container-fluid">
			    <a class="navbar-brand" href="#">Página de Login</a>
			    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
			      <span class="navbar-toggler-icon"></span>
			    </button>
			    <div class="collapse navbar-collapse" id="navbarText">
			      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			        <li class="nav-item">
			          <a class="nav-link active" aria-current="page" href="#">Inicio</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="#">Opción 1</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="#">Opción 2</a>
			        </li>
			      </ul>
			      <span class="navbar-text">
			      	<ul class="navbar-nav me-auto mb-2 mb-lg-0">
			      		<li class="nav-item">
			      			<a href="" class="nav-link active"><?php echo $nombre; ?></a>
			      		</li>
			      		<li class="nav-item">
			        		<a href="../login/cerrarSesion.php" class="nav-link">Cerrar Sesión</a>
			        	</li>
			        </ul>
			      </span>
			    </div>
			  </div>
			</nav>
		</div>
	</header>
	<section>
		<div class="container" align="center">
			<h1>Lista de clientes</h1>

			<div class="card">
				<div class="card-header">
					<a href="reportePDF.php" target="blank" class="btn btn-dark">Descargar en PDF</a>
				</div>
				<div class="card-body">
					<div class="scrollBar">
						<table class="table table-light text-center table-striped table-hover table-sm">
						  <thead>
						     <tr>
						      <th scope="col">ID</th>
						      <th scope="col">Nombres</th>
						      <th scope="col">Apellidos</th>
						      <th scope="col">Cédula</th>
						      <th scope="col">Teléfono</th>
						      <th scope="col">Correo</th>
						    </tr>
						  </thead>
						  <tbody>

						   <?php 
					  		include ("../login/conex.php");
					      	$link = conectarse();

					      	$clientes0 = mysqli_query($link, "SELECT * FROM clientes");
							while ($fila = mysqli_fetch_array($clientes0)) { 
								$idCliente = $fila['id'];
						        $nombres = $fila['nombres'];
						        $apellidos = $fila['apellidos'];
						        $cedula = $fila['cedula'];
						        $telefono = $fila['telefono'];
						        $correo = $fila['correo'];				        
					  	 ?>

					  	 	<tr>
					  	 		<td><?php echo $idCliente; ?></td>
					  	 		<td><?php echo $nombres; ?></td>
					  	 		<td><?php echo $apellidos; ?></td>
					  	 		<td><?php echo $cedula; ?></td>
					  	 		<td><?php echo $telefono; ?></td>
					  	 		<td><?php echo $correo; ?></td>
					  	 	</tr>

					  	 <?php } ?>
					    				   
						    
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>


	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
</body>
</html>
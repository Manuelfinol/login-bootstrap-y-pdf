<?php 
			session_start();

            $usuario = $_SESSION["usu"];
            $nombre = $_SESSION["nombre"];
            $id = $_SESSION["id"];
            $tipo = $_SESSION["tipo"];
           
            if (strlen($usuario) == 0) {
                  header("Location: ../../index.html");
            }
 ?>
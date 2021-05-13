<?php 
	@session_start();

	echo '<script language="javascript">alert("¡Regresa pronto!");</script>';
	
	echo "<script>location.href='../../index.html';</script>";

	session_destroy();
 ?>
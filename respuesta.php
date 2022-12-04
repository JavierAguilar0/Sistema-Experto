<html>
<head>
	<title>Sistema Experto</title>
	<link rel="stylesheet" type="text/css" href="css/estilo.css">
</head>
<body>
<header>	
	<h1>Deteccion de COVID</h1>
</header>
<main>
<?php
//CONECTAMOS CON LA BD
require "conexion.php";
//RECOGEMOS LA RESPUESTA
$respuesta = $_GET["r"];
$nodo = $_GET["n"];
$nombreAnterior = $_GET["p"];
$numPregunta = $_GET["np"];
//----------------------------------------------
	function formularioRespuesta($n,$p){
	echo "<div class = pregunta>";
	echo "<h2>¡INICIE DE NUEVO!</h2>";
	echo "</div>";
}
//SI HA FALLADO
if($respuesta == 0){	
	session_start();			//iniciamos la sesión
	$nodosRepuesto =array();	//creamos el array	
	//COMPROBAMOS SI EXISTE LA VARIABLE DE SESIÓN (ES DECIR, SI HEMOS GUARDADO ALGÚN NODO EN EL QUE DUDÁSEMOS)
	if(isset($_SESSION['nodosRepuesto'])){
		$nodosRepuesto = $_SESSION['nodosRepuesto'];
		$tamano = count($nodosRepuesto);			//medimos la longitud del array				
		if($tamano != 0){
			//SI HAY ELEMENTOS EN EL ARRAY QUE PODAMOS USAR			
			$nodoRevisar = array_pop($nodosRepuesto);	//obtenemos el último elemento del nodo y lo desapilamos
			$_SESSION['nodosRepuesto']=$nodosRepuesto;  //actualizamos el array con los valores nuevos		
			header("Location:index.php?n=".$nodoRevisar."&r=0&np=".$numPregunta."");	//volvemos automáticamente al nodo		
		}		
		else{
			//SI EL ARRAY CON NODOS DE REPUESTO ESTÁ VACÍO
			formularioRespuesta($nodo,$nombreAnterior);
		}		
	}	
	else{
		//SI NO HAY VARIABLE DE SESIÓN
		formularioRespuesta($nodo,$nombreAnterior);
	}
}
//SI HA ACERTADO
else{	
	//--------------------------------------------------------
	//GUARDAMOS EL ACIERTO EN EL LOG DE LA BD (TABLA PARTIDA)	
	//$consulta = "INSERT INTO partida (personaje,acierto) VALUES('".$nombreAnterior."',TRUE);";
	//mysqli_query($enlace, $consulta);
	//-----------------------------------------------------
	//BORRAMOS LA VARIABLE DE SESIÓN CON EL ARRAY
	session_start();		//iniciamos la sesión
	$arrayVacio =array();
	if(isset($_SESSION['nodosRepuesto'])){
		$_SESSION['nodosRepuesto']=$arrayVacio;
	}
	//-----------------------------------------------------
	echo "<div class = pregunta>";
	echo "<h2>¡GRACIAS POR USAR EL SISTEMA ;)</h2>";
	echo "</div>";
}
?>
</main>
<br>
<br>
<footer>
</footer>
</body>
</html>
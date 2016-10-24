<?php
function create_database_connection(){

	try {
	    $pdo = new PDO('mysql:host=localhost;dbname=ulht_db', 'root', '');
	    return $pdo;
	} catch (PDOException $e) {
	    print $e->getMessage();
	    return false;
	}

}

function destroy_database_connection(&$pdo){
	$pdo = null;
}

function get_all_players($pdo){
	$statement = $pdo->prepare("SELECT * FROM players");
	$statement->execute();
	$all_players = $statement->fetchAll();
	return $all_players;
}

function draw_players_table($players){
	?>
	<table border='1'>
	<tr>
	    <th>Identificacao</th>
	    <th>Nome</th> 
	    <th>Idade</th>
	    <th>Altura</th> 
	    <th>Peso</th>
	    <th>Foto</th> 
	    <th>Clube</th>
	    <th>Foto do clube</th>
	    <th>Ver jogador</th>
	    <th>Editar</th>
	    <th>Eliminar</th>
  	</tr>
  <?php
	foreach($players as $player){
		echo "<tr>";
		echo "<td>".$player["player_id"]."</td>";
		echo "<td>".$player["name"]."</td>";
		echo "<td>".$player["age"]."</td>";
		echo "<td>".$player["height"]."</td>";
		echo "<td>".$player["weight"]."</td>";
		echo "<td><img src='".$player["image_url"]."'</td>";
		echo "<td>".$player["club"]."</td>";
		echo "<td><img src='".$player["club_image_url"]."'</td>";
		echo "<td><a href='#'>Ver</a></td>";
		echo "<td><a href='#'>Editar</a></td>";
		echo "<td><a href='#'>Apagar</a></td>";
		echo "</tr>";
	}
	echo "</table>";
}
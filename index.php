<?php
require('helpers.php');
require('menu.php');

$pdo = create_database_connection();
$all_players = get_all_players($pdo);
draw_players_table($all_players);
destroy_database_connection($pdo);
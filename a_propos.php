<?php
// Initialise Twig
include('include/twig.php');
$twig = init_twig();

include('include/config.php');

$pdo = new PDO('mysql:host=' . SERVER . ';dbname=' . BDD . ';charset=utf8', USER, PASSWORD);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);

$sql = 'SELECT count(*) as total_avis
FROM avis';
$query = $pdo->prepare($sql);
$query->execute(); 
$total_avis = $query->fetch(PDO::FETCH_ASSOC)['total_avis'];

// Lancement du moteur Twig avec les données
echo $twig->render('a_propos.html.twig', [
'title' => 'A propos de nous',
'total_avis' => $total_avis,
]);

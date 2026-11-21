<?php
include('include/twig.php');
$twig = init_twig();

include('include/config.php');

$id = (int)($_GET['id'] ?? 0);

$pdo = new PDO('mysql:host=' . SERVER . ';dbname=' . BDD . ';charset=utf8', USER, PASSWORD);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);

$sql = 'SELECT * 
FROM villes';
$query = $pdo->prepare($sql);
$query->execute();
$villes_activite = $query->fetchAll(PDO::FETCH_ASSOC);


if ($id > 0) {
    $sql = 'SELECT activites.*, villes.nom_villes, images.img
FROM activites 
LEFT JOIN villes ON activites.id_villes = villes.id_villes
LEFT JOIN images ON activites.id_activite = images.id_activite
WHERE activites.id_villes = :id
GROUP BY activites.id_activite';
    $query = $pdo->prepare($sql);
    $query->bindValue(':id', $id, PDO::PARAM_INT);
    $query->execute();
    $activites_par_ville = $query->fetchAll(PDO::FETCH_ASSOC);
} else {
    $sql = 'SELECT activites.*, villes.nom_villes, images.img
FROM activites 
LEFT JOIN villes ON activites.id_villes = villes.id_villes
LEFT JOIN images ON activites.id_activite = images.id_activite
GROUP BY activites.id_activite';
    $query = $pdo->prepare($sql);
    $query->execute();
    $activites_par_ville = $query->fetchAll(PDO::FETCH_ASSOC);
}



echo $twig->render('activites_par_ville.html.twig', [
    'villes_activite' => $villes_activite,
    'activites_par_ville' => $activites_par_ville,
    'title' => 'activites par ville'
]);

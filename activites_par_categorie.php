<?php
include('include/twig.php');
$twig = init_twig();

include('include/config.php');

$id = (int)($_GET['id'] ?? 0);

$pdo = new PDO('mysql:host=' . SERVER . ';dbname=' . BDD . ';charset=utf8', USER, PASSWORD);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);

$sql = 'SELECT * 
FROM categorie';
$query = $pdo->prepare($sql);
$query->execute();
$categorie_activite = $query->fetchAll(PDO::FETCH_ASSOC);


if ($id > 0) {
    $sql = 'SELECT activites.*, villes.nom_villes, images.img, categorie.*
FROM activites 
LEFT JOIN villes ON activites.id_villes = villes.id_villes
LEFT JOIN images ON activites.id_activite = images.id_activite
LEFT JOIN categorie_activites ON activites.id_activite = categorie_activites.id_activite
LEFT JOIN categorie ON categorie_activites.id_categorie = categorie.id_categorie
WHERE categorie_activites.id_categorie = :id
GROUP BY activites.id_activite';
    $query = $pdo->prepare($sql);
    $query->bindValue(':id', $id, PDO::PARAM_INT);
    $query->execute();
    $activites_par_categorie = $query->fetchAll(PDO::FETCH_ASSOC);
} else {
$sql = 'SELECT activites.*, villes.nom_villes, images.img, categorie.*
FROM activites 
LEFT JOIN villes ON activites.id_villes = villes.id_villes
LEFT JOIN images ON activites.id_activite = images.id_activite
LEFT JOIN categorie_activites ON activites.id_activite = categorie_activites.id_activite
LEFT JOIN categorie ON categorie_activites.id_categorie = categorie.id_categorie
WHERE categorie_activites.id_activite = activites.id_activite
GROUP BY activites.id_activite';
    $query = $pdo->prepare($sql);
    $query->execute();
    $activites_par_categorie = $query->fetchAll(PDO::FETCH_ASSOC);
}



echo $twig->render('activites_par_categorie.html.twig', [
    'categorie_activite' => $categorie_activite,
    'activites_par_categorie' => $activites_par_categorie,
    'title' => 'Activités par catégorie',

]);

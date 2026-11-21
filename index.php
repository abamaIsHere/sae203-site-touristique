<?php
// Initialise Twig
include('include/twig.php');
$twig = init_twig();

// Récupère les identifiants dans un fichier de configuration
include('include/config.php');

// Connexion à la base de données et force l'affichage des erreurs SQL
$pdo = new PDO('mysql:host=' . SERVER . ';dbname=' . BDD . ';charset=utf8', USER, PASSWORD);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);


$sql = 'SELECT * 
FROM villes
WHERE pays = :pays';
$query = $pdo->prepare($sql);
$query->bindValue(':pays', 'France', PDO::PARAM_STR);
$query->execute();
$villes = $query->fetchAll(PDO::FETCH_ASSOC);


$sql = 'SELECT activites.*, villes.*, images.* 
FROM activites 
JOIN villes ON activites.id_villes = villes.id_villes
LEFT JOIN images ON activites.id_activite = images.id_activite
WHERE villes.pays = :pays 
group BY activites.id_activite LIMIT 5';
$query = $pdo->prepare($sql);
$query->bindValue(':pays', 'france', PDO::PARAM_STR);
$query->execute();
$activites_fr = $query->fetchAll(PDO::FETCH_ASSOC);



$sql = 'SELECT * 
FROM villes
WHERE pays != :pays';
$query = $pdo->prepare($sql);
$query->bindValue(':pays', 'France', PDO::PARAM_STR);
$query->execute();
$villes_fr = $query->fetchAll(PDO::FETCH_ASSOC);


$sql = 'SELECT activites.*, villes.*, images.* 
FROM activites 
JOIN villes ON activites.id_villes = villes.id_villes
JOIN images ON images.id_activite = activites.id_activite
WHERE pays != :pays
GROUP BY activites.id_activite
ORDER BY RAND() LIMIT 5';
$query = $pdo->prepare($sql);
$query->bindValue(':pays', 'France', PDO::PARAM_STR);
$query->execute();
$activites_hors_fr = $query->fetchAll(PDO::FETCH_ASSOC);




// Lancement du moteur Twig avec les données
echo $twig->render('base.html.twig', [
    'activites' => $activites_fr,
    'activites_hors_fr' => $activites_hors_fr,
    'villes' => $villes,
    'villes_fr' => $villes_fr
]);

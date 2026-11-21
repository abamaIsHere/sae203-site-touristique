<?php
// Initialise Twig
include('include/twig.php');
$twig = init_twig();

// Récupère les identifiants dans un fichier de configuration
include('include/config.php');

$id = (int)($_GET['id'] ?? 0);

// Connexion à la base de données et force l'affichage des erreurs SQL
$pdo = new PDO('mysql:host=' . SERVER . ';dbname=' . BDD . ';charset=utf8', USER, PASSWORD);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);



if(isset($_POST['submit_avis'])) {
    $nom = htmlspecialchars(trim($_POST['nom']), ENT_QUOTES, 'UTF-8');
    $prenom = htmlspecialchars(trim($_POST['prenom']), ENT_QUOTES, 'UTF-8');
    $note = htmlspecialchars(trim($_POST['note']), ENT_QUOTES, 'UTF-8');
    $avis_desc = htmlspecialchars(trim($_POST['avis_desc']), ENT_QUOTES, 'UTF-8');

    if (!empty($nom) && !empty($prenom) && !empty($avis_desc) && $note >= 1 && $note <= 5) {
        try {
            $sql = "INSERT INTO avis (avis_nom, avis_prenom, note, avis_desc, id_activite) VALUES (:nom, :prenom, :note, :avis_desc, :id_activite)";
            $query = $pdo->prepare($sql);
            $query->bindValue(':nom', $nom, PDO::PARAM_STR);
            $query->bindValue(':prenom', $prenom, PDO::PARAM_STR);
            $query->bindValue(':note', $note, PDO::PARAM_STR);
            $query->bindValue(':avis_desc', $avis_desc, PDO::PARAM_STR);
            $query->bindValue(':id_activite', $id, PDO::PARAM_INT);
            $query->execute();

            //header("Location: detail_activite.php?id=" . $id);
        
        } 
        catch (PDOException $e) {
            $errorMessage = "An error occurred while saving your review. Please try again later.";
        }   
    }
}

$sql = 'SELECT images.*
FROM images
WHERE id_activite = :id';
$query = $pdo->prepare($sql);
$query->bindValue(':id', $id, PDO::PARAM_INT);
$query->execute();
$activite_par_villes_img = $query->fetchAll(PDO::FETCH_ASSOC);


$sql = 'SELECT activites.*, villes.nom_villes, villes.pays
FROM activites
LEFT JOIN villes on activites.id_villes = villes.id_villes
WHERE activites.id_activite = :id';
$query = $pdo->prepare($sql);
$query->bindValue(':id', $id, PDO::PARAM_INT);
$query->execute();
$activites_detail = $query->fetch(PDO::FETCH_ASSOC);


$sql = 'SELECT activites.*, villes.nom_villes, villes.pays, images.*
FROM activites
LEFT JOIN villes on activites.id_villes = villes.id_villes
LEFT JOIN images on activites.id_activite = images.id_activite
WHERE activites.id_villes = :id_ville
GROUP BY activites.id_activite';
// AND activites.id_villes != :id
$query = $pdo->prepare($sql);
$query->bindValue(':id_ville', $activites_detail["id_villes"], PDO::PARAM_INT);
$query->execute();
$activites_suggestion = $query->fetchAll(PDO::FETCH_ASSOC);




$sql = 'SELECT *
FROM avis
WHERE  avis.id_activite = :id';
$query = $pdo->prepare($sql);
$query->bindValue(':id', $id, PDO::PARAM_INT);
$query->execute();
$avis = $query->fetchAll(PDO::FETCH_ASSOC);




echo $twig->render('detail_activite.html.twig', [
    'activites_detail' => $activites_detail,
    'activite_par_villes_img' => $activite_par_villes_img,
    'activite_suggestion' => $activites_suggestion,
    'avis' => $avis,
    'error_message' => $errorMessage ?? null,
    'title' => 'Détails de l\'activité'
]);


// $sql = 'SELECT *
// FROM avis
// LEFT JOIN activites ON avis.id_avis = activites.id_avis
// WHERE activites.id_activite = :id';
// $query = $pdo->prepare($sql);
// $query->bindValue(':id', $id, PDO::PARAM_INT);
// $query->execute();
// $activite_par_villes_img = $query->fetchAll(PDO::FETCH_ASSOC);


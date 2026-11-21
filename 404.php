<?php
// Initialise Twig
include('include/twig.php');
$twig = init_twig();

// Récupère les identifiants dans un fichier de configuration
echo $twig->render('404.html.twig', [
'title' => 'Page non trouvée'
]);

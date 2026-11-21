<?php
// Initialise Twig
include('include/twig.php');
$twig = init_twig();


echo $twig->render('403.html.twig', [
'title' => 'coucou, Accès interdit'
]);

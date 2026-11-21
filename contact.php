<?php
include('include/twig.php');
$twig = init_twig();


include('include/config.php');

$pdo = new PDO('mysql:host=' . SERVER . ';dbname=' . BDD . ';charset=utf8', USER, PASSWORD);
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);


$successMessage = null;
$errorMessage = null;
$ClientData = ['name' => '', 'email' => '', 'message' => ''];

if (isset($_POST['submit'])) {
    
    $ClientData['name'] = htmlspecialchars(trim($_POST['name']), ENT_QUOTES, 'UTF-8');
    $ClientData['email'] = htmlspecialchars(trim($_POST['email']), ENT_QUOTES, 'UTF-8');
    $ClientData['message'] = htmlspecialchars(trim($_POST['message']), ENT_QUOTES, 'UTF-8');

    if (empty($ClientData['name']) || empty($ClientData['email']) || empty($ClientData['message'])) {
        $errorMessage = "All fields are required.";
    }  else {
        
        try {
            $sql = "INSERT INTO clients (nom_client, mail_client, message_client) VALUES (:name, :email, :message)";
            $query = $pdo->prepare($sql);
            $query->bindValue(':name', $ClientData['name'], PDO::PARAM_STR);
            $query->bindValue(':email', $ClientData['email'], PDO::PARAM_STR);
            $query->bindValue(':message', $ClientData['message'], PDO::PARAM_STR);
            $query->execute();

            $successMessage = "Thank you! Your information has been saved to our database.";
            $ClientData = ['name' => '', 'email' => '', 'message' => '']; 

        } catch (PDOException $e) {
            // Log this error privately in production, don't show raw DB errors to users!
            $errorMessage = "An error occurred while saving your data. Please try again later.";
        }
    }
}

echo $twig->render('contact.html.twig', [
    'success_message' => $successMessage,
    'error_message'   => $errorMessage,
    'input'           => $ClientData,
    'title' => 'Contact'
]);



<?php
require_once __DIR__ . '/../config.php';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	$name  = $_POST['name']  ?? '';
	$email = $_POST['email'] ?? '';
	$pass  = $_POST['password'] ?? '';
	$city  = $_POST['city'] ?? '';
	$stmt = $pdo->prepare("SELECT id FROM users WHERE email = ?");
	$stmt->execute([$email]);
	if ($stmt->fetch()) {
		$error = 'Użytkownik o podanym emailu już istnieje';
	} else {
		$hashed = password_hash($pass, PASSWORD_DEFAULT);
		$stmtInsert = $pdo->prepare("
            INSERT INTO users (name, email, password, city, created_at, updated_at)
            VALUES (?, ?, ?, ?, NOW(), NOW())
        ");
		$stmtInsert->execute([$name, $email, $hashed, $city]);
		header("Location: " . app_url('page/login'));
		exit;
	}
}
include __DIR__ . '/../views/register_view.php';

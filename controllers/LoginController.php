<?php
require_once __DIR__ . '/../config.php';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
	$email = $_POST['email'] ?? '';
	$password = $_POST['password'] ?? '';
	$stmt = $pdo->prepare("SELECT * FROM users WHERE email = ?");
	$stmt->execute([$email]);
	$userData = $stmt->fetch(PDO::FETCH_ASSOC);
	if ($userData && password_verify($password, $userData['password'])) {
		$_SESSION['user_id'] = $userData['id'];
		header("Location: " . app_url('/'));
		exit;
	} else {
		$error = __t('error_bad_credentials');
	}
}
include __DIR__ . '/../views/login_view.php';

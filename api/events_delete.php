<?php
$pdo = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME.";charset=utf8", DB_USER, DB_PASS);
$stmt = $pdo->prepare("DELETE FROM events WHERE id = ?");
$stmt->execute([$id]);
echo json_encode(['deleted_id' => $id]);

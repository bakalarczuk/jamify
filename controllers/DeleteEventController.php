<?php
require_once __DIR__ . '/../config.php';
// sprawdzenie zalogowania
if ($_SERVER['REQUEST_METHOD'] !== 'POST'
) {
    exit;
}
$eventId = $_POST['id'] ?? null;  // pobieraj id z POST
$stmtDelete = $pdo->prepare(
    "DELETE FROM events WHERE id = ? AND user_id = ?"
);
$stmtDelete->execute([$eventId, $_SESSION['user_id']]);
header("Location: " . app_url('/'));
exit;

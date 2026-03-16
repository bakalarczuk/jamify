<?php
require_once __DIR__ . '/../config.php';
$eventId = $_GET['id'] ?? null;
if (!$eventId) {
    header("Location: " . app_url('/'));
    exit;
}
$stmt = $pdo->prepare("
    SELECT 
      e.id,
      e.user_id,
      e.title,
      e.description,
      DATE_FORMAT(e.event_date, '%Y-%m-%d') AS event_date,
      DATE_FORMAT(e.event_date, '%H:%i')     AS event_time,
      u.name AS user_name,
      v.name AS venue_name,
      v.street,
      v.building_number,
      v.local_number,
      v.city,
      t.name AS event_type_name
    FROM events e
    INNER JOIN users u ON e.user_id = u.id
    INNER JOIN venues v ON e.venue_id = v.id
    INNER JOIN event_types t ON e.event_type_id = t.id
    WHERE e.id = ?
");
$stmt->execute([$eventId]);
$eventDetails = $stmt->fetch(PDO::FETCH_ASSOC);
if (!$eventDetails) {
    header("Location: " . app_url('/'));
    exit;
}
include __DIR__ . '/../views/event_details_view.php';

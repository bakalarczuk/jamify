<?php
$input = json_decode(file_get_contents('php://input'), true);
$venueId     = $input['venue_id']      ?? 0;
$title       = $input['title']         ?? '';
$description = $input['description']   ?? '';
$eventDate   = $input['event_date']    ?? null;
$eventTypeId = $input['event_type_id'] ?? 0;
$pdo = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME.";charset=utf8", DB_USER, DB_PASS);
$stmt = $pdo->prepare("
  UPDATE events
  SET venue_id = ?, title = ?, description = ?, event_date = ?, event_type_id = ?, updated_at = NOW()
  WHERE id = ?
");
$stmt->execute([$venueId, $title, $description, $eventDate, $eventTypeId, $id]);
echo json_encode(['updated_id' => $id]);

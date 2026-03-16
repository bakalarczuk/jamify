<?php
$input = json_decode(file_get_contents('php://input'), true);
$userId      = $input['user_id']       ?? 0;
$venueId     = $input['venue_id']      ?? 0;
$title       = $input['title']         ?? '';
$description = $input['description']   ?? '';
$eventDate   = $input['event_date']    ?? null;
$eventTypeId = $input['event_type_id'] ?? 0;
$pdo = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME.";charset=utf8", DB_USER, DB_PASS);
$stmt = $pdo->prepare("
  INSERT INTO events (user_id, venue_id, title, description, event_date, event_type_id, created_at, updated_at)
  VALUES (?, ?, ?, ?, ?, ?, NOW(), NOW())
");
$stmt->execute([$userId, $venueId, $title, $description, $eventDate, $eventTypeId]);
echo json_encode(['inserted_id' => $pdo->lastInsertId()]);

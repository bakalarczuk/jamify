<?php
// zakładam, że index.php już zrobił require '../config.php' i wyświetlił
// header('Content-Type: application/json'), więc tu tylko twoja logika

// 1) $id pochodzi z index.php, więc zabezpiecz go
$eventId = isset($id) ? (int)$id : 0;
if ($eventId < 1) {
    echo json_encode(['error'=>'Invalid ID']);
    exit;
}

$pdo = new PDO(
    "mysql:host=".DB_HOST.";dbname=".DB_NAME.";charset=utf8mb4",
    DB_USER,
    DB_PASS,
    [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
);

// 2) Jedno zapytanie z GROUP_CONCAT na genres
$sql = "
  SELECT 
    e.id,
    e.user_id,
    e.title,
    e.description,
    DATE_FORMAT(e.event_date, '%Y-%m-%d') AS event_date,
    DATE_FORMAT(e.event_date, '%H:%i')     AS event_time,
    u.name AS user_name,
    v.name AS venue_name,
    CONCAT(
      v.street,' ',v.building_number,
      IF(v.local_number='', '', CONCAT('/',v.local_number)),
      ', ',v.city
    ) AS venue_address,
    t.name AS event_type_name,
    GROUP_CONCAT(g.name ORDER BY g.name SEPARATOR ',') AS genres_csv
  FROM events e
  JOIN users u       ON e.user_id      = u.id
  JOIN venues v      ON e.venue_id     = v.id
  JOIN event_types t ON e.event_type_id = t.id
  LEFT JOIN event_genres eg ON eg.event_id = e.id
  LEFT JOIN genres g       ON g.id        = eg.genre_id
  WHERE e.id = :id
  GROUP BY e.id
";

$stmt = $pdo->prepare($sql);
$stmt->execute([':id' => $eventId]);
$event = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$event) {
    echo json_encode([]);
    exit;
}

// 3) Zamiana CSV na tablicę
$event['genres'] = $event['genres_csv']
    ? explode(',', $event['genres_csv'])
    : [];
unset($event['genres_csv']);

// 4) Wyjście JSON
echo json_encode($event);

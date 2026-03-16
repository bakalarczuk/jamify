<?php
// events_list.php

// 1) Połączenie z bazą (utf8mb4, jeśli potrzebujesz emoji)
$pdo = new PDO(
    "mysql:host=".DB_HOST.";dbname=".DB_NAME.";charset=utf8mb4",
    DB_USER,
    DB_PASS,
    [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
);

// 2) Pobranie listy wydarzeń razem z genres jako CSV
$sql = "
  SELECT
    e.id,
    e.title,
    DATE_FORMAT(e.event_date, '%Y-%m-%d') AS event_date,
    DATE_FORMAT(e.event_date, '%H:%i')     AS event_time,
    event_type_id,
    v.name   AS venue_name,
    v.city   AS venue_city,
    GROUP_CONCAT(g.name ORDER BY g.name SEPARATOR ',') AS genres_csv
  FROM events e
  INNER JOIN venues v        ON e.venue_id      = v.id
  LEFT JOIN event_genres eg  ON eg.event_id      = e.id
  LEFT JOIN genres g         ON g.id             = eg.genre_id
  GROUP BY e.id
  ORDER BY e.event_date ASC
";
$stmt   = $pdo->query($sql);
$events = $stmt->fetchAll(PDO::FETCH_ASSOC);

// 3) Zamiana pola genres_csv na tablicę genres
foreach ($events as &$ev) {
    if (isset($ev['genres_csv']) && $ev['genres_csv'] !== null) {
        $ev['genres'] = explode(',', $ev['genres_csv']);
    } else {
        $ev['genres'] = [];
    }
    // nie zwracamy już genres_csv
    unset($ev['genres_csv']);
}

// 4) JSON output
header('Content-Type: application/json; charset=utf-8');
echo json_encode($events);

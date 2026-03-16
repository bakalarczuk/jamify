<?php
// controllers/YourCityEventsController.php

require_once __DIR__ . '/../config.php';

// Pobierz dane użytkownika, jeśli jest zalogowany
if (isset($_SESSION['user_id']) && !empty($_SESSION['user_id'])) {
	$stmtUser = $pdo->prepare("SELECT name, city FROM users WHERE id = ?");
	$stmtUser->execute([$_SESSION['user_id']]);
	$userData = $stmtUser->fetch(PDO::FETCH_ASSOC);
	$userName = $userData['name'];
	$userCity = $userData['city'];
} else {
	$userName = null;
	$userCity = null;
}

// 2) Pobierz listę typów i gatunków do selektów
$eventTypes  = $pdo
    ->query("SELECT id, name FROM event_types ORDER BY name")
    ->fetchAll(PDO::FETCH_ASSOC);
$musicGenres = $pdo
    ->query("SELECT id, name FROM genres ORDER BY name")
    ->fetchAll(PDO::FETCH_ASSOC);

// 3) Odczyt filtrów z GET
$searchQuery = $_GET['q']             ?? '';
$filterType  = $_GET['filter_type']   ?? '3';  // domyślnie Jam Session
$filterGenre = $_GET['filter_genre']  ?? '';

// 4) Budowa zapytania
$sql = "
  SELECT
    e.id,
    e.event_type_id,
    e.title,
    DATE_FORMAT(e.event_date, '%Y-%m-%d') AS event_date,
    DATE_FORMAT(e.event_date, '%H:%i')     AS event_time,
    v.name AS venue_name
  FROM events e
  JOIN venues v ON e.venue_id = v.id
";

// jeśli filtrujemy po gatunku, dołączamy JOIN
if ($filterGenre !== '') {
    $sql .= " JOIN event_genres eg ON eg.event_id = e.id ";
}

$sql .= "
  WHERE v.city = :city
    AND e.event_date >= NOW()
    AND e.event_type_id = :type
";

if ($filterGenre !== '') {
    $sql .= " AND eg.genre_id = :genre ";
}

if ($searchQuery !== '') {
    $sql .= " AND (e.title LIKE :q OR e.description LIKE :q) ";
}

$sql .= " ORDER BY e.event_date ASC ";

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':city', $userCity, PDO::PARAM_STR);
$stmt->bindValue(':type', (int)$filterType, PDO::PARAM_INT);

if ($filterGenre !== '') {
    $stmt->bindValue(':genre', (int)$filterGenre, PDO::PARAM_INT);
}
if ($searchQuery !== '') {
    $stmt->bindValue(':q', "%{$searchQuery}%", PDO::PARAM_STR);
}

$stmt->execute();
$cityEvents = $stmt->fetchAll(PDO::FETCH_ASSOC);

// 5) Do widoku
include __DIR__ . '/../views/events_city_view.php';

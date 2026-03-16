<?php
// controllers/EventsController.php
require_once __DIR__ . '/../config.php';

// 1) Pobierz listę typów i gatunków do selectów
$eventTypes  = $pdo->query("SELECT id,name FROM event_types ORDER BY name")
                   ->fetchAll(PDO::FETCH_ASSOC);
$musicGenres = $pdo->query("SELECT id,name FROM genres ORDER BY name")
                   ->fetchAll(PDO::FETCH_ASSOC);

// 2) Odczytaj filtry z GET
$searchQuery = $_GET['q']             ?? '';
$filterType  = $_GET['filter_type']   ?? '3'; // domyślnie Jam Session (ID=3)
$filterGenre = $_GET['filter_genre']  ?? '';

// 3) Zbuduj SQL z warunkami
$sql = "
  SELECT
    e.id, e.title,e.event_type_id,
    DATE_FORMAT(e.event_date,'%Y-%m-%d') AS event_date,
    DATE_FORMAT(e.event_date,'%H:%i')     AS event_time,
    v.name AS venue_name,
    v.city
  FROM events e
  JOIN venues v ON e.venue_id = v.id
";

// dołączamy event_genres tylko jeśli filtrujemy po gatunku
if ($filterGenre !== '') {
    $sql .= " JOIN event_genres eg ON eg.event_id = e.id AND eg.genre_id = :genre ";
}

$sql .= " WHERE 1=1 ";
$sql .= " AND e.event_date >= NOW() ";

// wyszukiwanie
if ($searchQuery !== '') {
    $sql .= " AND (e.title LIKE :q OR e.description LIKE :q) ";
}

// typ wydarzenia (zawsze)
$sql .= " AND e.event_type_id = :type ";

// sortowanie
$sql .= " ORDER BY e.event_date ASC ";

$stmt = $pdo->prepare($sql);

// 4) podłączamy parametry
if ($filterGenre !== '') {
    $stmt->bindValue(':genre', (int)$filterGenre, PDO::PARAM_INT);
}
if ($searchQuery !== '') {
    $stmt->bindValue(':q', "%{$searchQuery}%", PDO::PARAM_STR);
}
$stmt->bindValue(':type', (int)$filterType, PDO::PARAM_INT);

$stmt->execute();
$allEvents = $stmt->fetchAll(PDO::FETCH_ASSOC);

// 5) Przekaż do widoku
include __DIR__ . '/../views/events_view.php';

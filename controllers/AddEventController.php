<?php
// controllers/AddEventController.php

require_once __DIR__ . '/../config.php';

if (empty($_SESSION['user_id'])) {
    header("Location: " . app_url('page/login'));
    exit;
}

// pobierz typy wydarzeń
$stmtTypes   = $pdo->query("SELECT id, name FROM event_types");
$eventTypes  = $stmtTypes->fetchAll(PDO::FETCH_ASSOC);

// pobierz miejsca
$stmtVenues  = $pdo->query("SELECT id, name, street, building_number, local_number, city FROM venues");
$venues      = $stmtVenues->fetchAll(PDO::FETCH_ASSOC);

// pobierz dostępne gatunki muzyczne
$stmtGenres    = $pdo->query("SELECT id, name FROM genres ORDER BY name");
$musicGenres   = $stmtGenres->fetchAll(PDO::FETCH_ASSOC);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $title         = $_POST['title']       ?? '';
    $description   = $_POST['description'] ?? '';
    $eventDate     = $_POST['event_date']  ?? '';
    $eventTypeId   = $_POST['event_type_id'] ?? '';
    
    // wybór miejsca
    if (!empty($_POST['venue_name'])) {
        $stmtNewVenue = $pdo->prepare("
            INSERT INTO venues (name, street, building_number, local_number, city)
            VALUES (?, ?, ?, ?, ?)
        ");
        $stmtNewVenue->execute([
            $_POST['venue_name'],
            $_POST['street'],
            $_POST['building_number'],
            $_POST['local_number'],
            $_POST['city'],
        ]);
        $venueId = $pdo->lastInsertId();
    } else {
        $venueId = $_POST['venue_id'];
    }

    // pobierz zaznaczone gatunki
    $selectedGenres = $_POST['genres'] ?? [];

    // zacznij transakcję, najpierw wstaw event
    $pdo->beginTransaction();
    try {
        $stmtInsert = $pdo->prepare("
            INSERT INTO events 
              (user_id, venue_id, title, description, event_date, event_type_id, created_at, updated_at)
            VALUES (?, ?, ?, ?, ?, ?, NOW(), NOW())
        ");
        $stmtInsert->execute([
            $_SESSION['user_id'],
            $venueId,
            $title,
            $description,
            $eventDate,
            $eventTypeId,
        ]);
        $eventId = $pdo->lastInsertId();

        // wstaw powiązania gatunków
        $stmtLink = $pdo->prepare("
            INSERT INTO event_genres (event_id, genre_id)
            VALUES (?, ?)
        ");
        foreach ($selectedGenres as $genreId) {
            $stmtLink->execute([ $eventId, (int)$genreId ]);
        }

        $pdo->commit();
        header("Location: " . app_url('/'));
        exit;
    } catch (Exception $e) {
        $pdo->rollBack();
        error_log($e->getMessage());
        exit('Błąd serwera, nie udało się dodać wydarzenia.');
    }
}

include __DIR__ . '/../views/add_event_view.php';

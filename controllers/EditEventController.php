<?php
require_once __DIR__ . '/../config.php';
// nie musisz tu już wołać session_start() – jest w config.php

// 1) Tylko dla zalogowanych
if (empty($_SESSION['user_id'])) {
    header('Location: ' . app_url('page/login'));
    exit;
}

// 2) Pobierz ID wydarzenia i jego dane
$eventId = isset($_GET['id']) ? (int)$_GET['id'] : 0;
$stmtEvent = $pdo->prepare("SELECT * FROM events WHERE id = ? AND user_id = ?");
$stmtEvent->execute([$eventId, $_SESSION['user_id']]);
$eventData = $stmtEvent->fetch();
if (!$eventData) {
    header('Location: ' . app_url('/'));
    exit;
}

// 3) Pobierz dane pomocnicze: typy, miejsca, gatunki
$eventTypesStmt = $pdo->query("SELECT id, name FROM event_types");
$eventTypes     = $eventTypesStmt->fetchAll();

$venuesStmt     = $pdo->query("SELECT id, name, city FROM venues");
$venues         = $venuesStmt->fetchAll();

// 3a) wszystkie gatunki
$genresStmt     = $pdo->query("SELECT id, name FROM genres ORDER BY name");
$musicGenres    = $genresStmt->fetchAll();

// 3b) zaznaczone dla tego eventu
$selStmt = $pdo->prepare("SELECT genre_id FROM event_genres WHERE event_id = ?");
$selStmt->execute([$eventId]);
$selectedGenres = array_column($selStmt->fetchAll(), 'genre_id');

// 4) Obsługa formularza
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // 4a) podstawowe pola
    $title       = trim($_POST['title']       ?? '');
    $description = trim($_POST['description'] ?? '');
    $eventDate   = $_POST['event_date']       ?? '';
    $eventTypeId = $_POST['event_type_id']    ?? null;
    $venueId     = $_POST['venue_id']         ?? null;
    $genres      = $_POST['genres']           ?? [];  // array of genre_id

    // (tu możesz dodać własną walidację…)

    // 4b) Zapisz wszystko w tranzakcji
    $pdo->beginTransaction();
    try {
        // aktualizacja eventu
        $upd = $pdo->prepare("
            UPDATE events
            SET venue_id      = ?,
                title         = ?,
                description   = ?,
                event_date    = ?,
                event_type_id = ?,
                updated_at    = NOW()
            WHERE id = ? AND user_id = ?
        ");
        $upd->execute([
            $venueId,
            $title,
            $description,
            $eventDate,
            $eventTypeId,
            $eventId,
            $_SESSION['user_id']
        ]);

        // wyczyść stare powiązania gatunków
        $pdo->prepare("DELETE FROM event_genres WHERE event_id = ?")
            ->execute([$eventId]);

        // wstaw nowe powiązania
        $link = $pdo->prepare("
            INSERT INTO event_genres (event_id, genre_id)
            VALUES (?, ?)
        ");
        foreach ($genres as $gId) {
            $link->execute([$eventId, (int)$gId]);
        }

        $pdo->commit();
        header('Location: ' . app_url('page/viewEvent/' . $eventId));
        exit;
    } catch (Exception $e) {
        $pdo->rollBack();
        error_log('[EditEvent] ' . $e->getMessage());
        exit('Błąd serwera, nie udało się zapisać zmian.');
    }
}

// 5) GET — wyświetl formularz
include __DIR__ . '/../views/edit_event_view.php';

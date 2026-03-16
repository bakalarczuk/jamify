<?php
require_once __DIR__ . '/../config.php';
header('Content-Type: application/json; charset=utf-8');
$method = $_SERVER['REQUEST_METHOD'];
$path   = $_GET['path'] ?? '';
$parts  = explode('/', trim($path, '/'));
$resource = $parts[0] ?? null;
$id = $parts[1] ?? null;

switch ($resource) {
    case 'events':
        if ($method === 'GET') {
            if ($id) {
                require __DIR__ . '/events_show.php';
            } else {
                require __DIR__ . '/events_list.php';
            }
        } elseif ($method === 'POST') {
            require __DIR__ . '/events_create.php';
        } elseif ($method === 'PUT') {
            if (!$id) {
                http_response_code(400);
                echo json_encode(['error' => 'Brak ID.']);
                exit;
            }
            require __DIR__ . '/events_update.php';
        } elseif ($method === 'DELETE') {
            if (!$id) {
                http_response_code(400);
                echo json_encode(['error' => 'Brak ID.']);
                exit;
            }
            require __DIR__ . '/events_delete.php';
        } else {
            http_response_code(405);
            echo json_encode(['error' => 'Metoda niedozwolona.']);
        }
        break;
        case 'event_types':
    if ($_SERVER['REQUEST_METHOD'] === 'GET') {
        require __DIR__ . '/event_type_list.php';
    } else {
        http_response_code(405);
        echo json_encode(['error'=>'Method Not Allowed']);
    }
    break;
    default:
        http_response_code(404);
        echo json_encode(['error' => 'Nie znaleziono endpointu.']);
}

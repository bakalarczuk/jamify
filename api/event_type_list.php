<?php
// api/event_type_list.php
// (Assumes that index.php has already done require '../config.php'
//  and sent header('Content-Type: application/json; charset=utf-8'))

// 1) Fetch all event types, ordered by name
$stmt = $pdo->query("SELECT id, name FROM event_types ORDER BY name ASC");

// 2) Convert to associative array
$types = $stmt->fetchAll(PDO::FETCH_ASSOC);

// 3) Output JSON
echo json_encode($types);

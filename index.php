<?php
require_once __DIR__ . '/config.php';
// dopiero potem reszta kodu / HTML

// 2) Wyciągnij ścieżkę z REQUEST_URI
$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
// Jeśli aplikacja w podkatalogu, obetnij początek
$basePath = rtrim(dirname($_SERVER['SCRIPT_NAME']), '/');
if ($basePath !== '' && strpos($uri, $basePath) === 0) {
    $uri = substr($uri, strlen($basePath));
}
$uri = trim($uri, '/');

// 3) Podziel na segmenty
$segments = explode('/', $uri);

// 4) Zainicjuj zmienne routingowe
$page = null;
$id   = null;

// 4a) Pretty URL: /page/{akcja}/{id}
if (isset($segments[0]) && $segments[0] === 'page') {
    // jeżeli drugi segment istnieje, to mamy akcję
    $page = $segments[1] ?? null;
    // jeżeli trzeci segment jest liczbą → to id
    if (isset($segments[2]) && ctype_digit($segments[2])) {
        $_GET['id'] = $segments[2];
    }
}
// 4b) Fallback na GET ?page=...
if (!$page) {
    $page = $_GET['page'] ?? 'events';  // domyślnie lista wydarzeń
}

// 5) Bezpieczna lista dopuszczalnych „akcji”
$allowed = [
    'viewEvent','addEvent','editEvent','deleteEvent',
    'login','register','logout',
    'events','your-city-events'
];
if (!in_array($page, $allowed, true)) {
    http_response_code(404);
    exit('404 Not Found');
}

// 6) Z CamelCase dla nazw z myślnikami
$camel = str_replace(' ', '', ucwords(str_replace('-', ' ', $page)));
$controllerFile = __DIR__ . '/controllers/' . $camel . 'Controller.php';
if (!file_exists($controllerFile)) {
    http_response_code(500);
    exit('Controller not found');
}

require_once $controllerFile;

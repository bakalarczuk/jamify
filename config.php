<?php
// config.php

// --- 1) Błędy i raportowanie
ini_set('display_errors', 1);
error_reporting(E_ALL);

// --- 1a) Bazowa ścieżka aplikacji (np. /jamify)
$scriptName = str_replace('\\', '/', $_SERVER['SCRIPT_NAME'] ?? '/index.php');
if (substr($scriptName, -14) === '/api/index.php') {
    $appBasePath = substr($scriptName, 0, -14);
} elseif (substr($scriptName, -10) === '/index.php') {
    $appBasePath = substr($scriptName, 0, -10);
} else {
    $scriptDir = rtrim(dirname($scriptName), '/');
    $appBasePath = ($scriptDir === '' || $scriptDir === '.') ? '' : $scriptDir;
}
define('APP_BASE_PATH', $appBasePath);

function app_url(string $path = ''): string {
    if ($path === '' || $path === '/') {
        return APP_BASE_PATH === '' ? '/' : APP_BASE_PATH . '/';
    }

    if (preg_match('#^https?://#i', $path) === 1) {
        return $path;
    }

    if ($path[0] === '?') {
        return (APP_BASE_PATH === '' ? '/' : APP_BASE_PATH . '/') . $path;
    }

    return (APP_BASE_PATH === '' ? '' : APP_BASE_PATH) . '/' . ltrim($path, '/');
}

function asset_url(string $path): string {
    $relative = ltrim($path, '/');
    $absolute = __DIR__ . '/' . str_replace('/', DIRECTORY_SEPARATOR, $relative);
    $version = file_exists($absolute) ? (string)filemtime($absolute) : null;
    $url = app_url($relative);

    return $version === null ? $url : $url . '?v=' . $version;
}

// --- 2) COOKIE i sesja (bez outputu wcześniej!)
$secure = (!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] !== 'off');
$cookiePath = APP_BASE_PATH === '' ? '/' : APP_BASE_PATH . '/';
session_set_cookie_params([
    'lifetime' => 0,
    'path'     => $cookiePath,
    'secure'   => $secure,
    'httponly' => true,
    'samesite' => 'Strict',
]);
session_start();

// --- 3) Definicje DB
define('DB_HOST', 'mariadb106.server455778.nazwa.pl');
define('DB_NAME', 'server455778_2');
define('DB_USER', 'server455778_2');
define('DB_PASS', 'Sznurki#098');

// --- 4) Połączenie z bazą
$dsn = "mysql:host=".DB_HOST.";dbname=".DB_NAME.";charset=utf8mb4";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    // to sprawi, że klient od razu wykona SET NAMES utf8mb4
    PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci",
];

try {
    $pdo = new PDO($dsn, DB_USER, DB_PASS, $options);
} catch (PDOException $e) {
    error_log('[DB] Connection failed: '.$e->getMessage());
    exit('Database connection error');
}


// --- 5) Nagłówki bezpieczeństwa
header('X-Frame-Options: SAMEORIGIN');
header('X-Content-Type-Options: nosniff');
header('Referrer-Policy: strict-origin-when-cross-origin');

// --- 6) Wykrywanie języka
function isValidLang(string $code): bool {
    return preg_match('/^[a-z]{2}$/i', $code) === 1;
}

function detectBrowserLang(): void {
    $default = 'pl';
    if (isset($_GET['lang']) && isValidLang($_GET['lang'])) {
        $_SESSION['lang'] = strtolower($_GET['lang']);
    } elseif (!isset($_SESSION['lang'])) {
        if (!empty($_SERVER['HTTP_ACCEPT_LANGUAGE'])) {
            $lang = strtolower(substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2));
            $_SESSION['lang'] = isValidLang($lang) ? $lang : $default;
        } else {
            $_SESSION['lang'] = $default;
        }
    }
}

detectBrowserLang();
$lang = $_SESSION['lang'] ?? 'pl';
$file = __DIR__ . '/lang/' . $lang . '.php';
$translations = file_exists($file)
    ? include $file
    : include __DIR__ . '/lang/pl.php';

function __t(string $key): string {
    global $translations;
    return $translations[$key] ?? $key;
}

// --- 7) Pobranie nazwy użytkownika (jeśli zalogowany)
$userName = null;
if (!empty($_SESSION['user_id'])) {
    try {
        $stmt = $pdo->prepare("SELECT name FROM users WHERE id = ?");
        $stmt->execute([ $_SESSION['user_id'] ]);
        $userName = $stmt->fetchColumn();
    } catch (PDOException $e) {
        error_log('[SESSION] could not fetch userName: '.$e->getMessage());
    }
}

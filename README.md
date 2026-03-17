# Jamify

Platform for browsing and managing music events (jam sessions, concerts, open mic nights).

## Features

- Browse upcoming music events with filtering by type, genre and city
- Personalized "Your City" view — automatically shows events in the logged-in user's city
- Full event management: create, edit, delete (own events only)
- Add new venues directly from the event form
- User registration and login
- REST API for external integrations
- Multilingual interface (Polish / English)

## Tech Stack

- PHP 8
- MySQL / MariaDB
- PDO
- Custom MVC architecture (no framework)
- TinyMCE (rich text editor for event descriptions)

## REST API

Base path: `/api`

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/events` | List all events |
| GET | `/api/events/{id}` | Event details |
| POST | `/api/events` | Create event |
| PUT | `/api/events/{id}` | Update event |
| DELETE | `/api/events/{id}` | Delete event |
| GET | `/api/event_types` | List event types |

All responses are JSON.

## Installation

1. Clone the repository
2. Create a database and import `database.sql`
3. Copy `config.example.php` to `config.php` and fill in your database credentials
4. Point your web server document root to the project directory
5. Make sure `mod_rewrite` is enabled (Apache) or configure URL rewriting accordingly

## Configuration

Copy `config.example.php` to `config.php`:

```php
define('DB_HOST', 'your_host');
define('DB_NAME', 'your_database');
define('DB_USER', 'your_user');
define('DB_PASS', 'your_password');
```

## Database

Schema is in `database.sql`. Main tables:

- `users` — registered users with city
- `events` — events with title, description, date, type
- `venues` — locations with full address
- `event_types` — event type dictionary (jam session, concert, open mic, etc.)
- `genres` — music genre dictionary
- `event_genres` — many-to-many: events ↔ genres

## Security

- Passwords hashed with `password_hash()`
- Sessions with `httponly` and `samesite=Strict` cookie flags
- All DB queries use PDO prepared statements
- Event edit/delete restricted to the event owner

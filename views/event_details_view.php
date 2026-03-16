<!DOCTYPE html>
<html lang="<?= htmlspecialchars($lang) ?>">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><?= htmlspecialchars($eventDetails['title']) ?></title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="<?= asset_url('css/styles.css') ?>">
	</head>
	<body class="bg-light">
	<!-- Top Header with Menu -->
	<header class="top-header">
	<?php include __DIR__.'/partials/menu.php' ?>
	<div class="container text-center mt-4 navbar-custom">
			<h1 class="display-1 header-title">Jamify</h1>
			<p class="lead header-title">From musicians for musicians</p>
		</div>
	</header>
		<div class="container py-5">
			<h1 class="mb-4 text-center"><?= htmlspecialchars($eventDetails['title']) ?></h1>
			<ul class="list-group mb-4">
				<li class="list-group-item">
					<strong><?= __t('form_description') ?>:</strong>
					<span><?= ($eventDetails['description']) ?></span>
				</li>
				<li class="list-group-item">
					<strong><?= __t('form_type') ?>:</strong>
					<span><?= htmlspecialchars($eventDetails['event_type_name']) ?></span>
				</li>
				<li class="list-group-item">
					<strong><?= __t('form_date') ?>:</strong>
					<span><?= htmlspecialchars($eventDetails['event_date']) ?></span>
				</li>
				<li class="list-group-item">
					<strong><?= __t('form_hour') ?>:</strong>
					<span><?= htmlspecialchars($eventDetails['event_time']) ?></span>
				</li>
				<li class="list-group-item">
					<strong><?= __t('user') ?>:</strong>
					<span><?= htmlspecialchars($eventDetails['user_name']) ?></span>
				</li>
				<li class="list-group-item">
					<strong><?= __t('venue') ?>:</strong>
					<span><?= htmlspecialchars($eventDetails['venue_name']) ?></span>
				</li>
				<li class="list-group-item">
					<strong><?= __t('form_address') ?>:</strong>
					<span>
					<?= htmlspecialchars($eventDetails['street']) ?> <?= htmlspecialchars($eventDetails['building_number']) ?>
					<?php
					if (!empty($eventDetails['local_number'])) : ?>
					/<?= htmlspecialchars($eventDetails['local_number']) ?>
					<?php
				endif; ?>, <?= htmlspecialchars($eventDetails['city']) ?>
					</span>
				</li>
				<!-- Gatunki muzyczne -->
      <?php
        $stmt = $pdo->prepare("
          SELECT g.name
            FROM genres g
            JOIN event_genres eg ON eg.genre_id = g.id
           WHERE eg.event_id = ?
           ORDER BY g.name
        ");
        $stmt->execute([ $eventDetails['id'] ]);
        $genres = array_column($stmt->fetchAll(), 'name');
      ?>
      <?php if (!empty($genres)): ?>
        <li class="list-group-item">
          <strong><?= __t('Genres') ?>:</strong>
          <?php foreach ($genres as $g): ?>
            <span class="badge bg-secondary me-1"><?= htmlspecialchars($g) ?></span>
          <?php endforeach; ?>
        </li>
      <?php endif; ?>
			</ul>
			<?php
			if (isset($_SESSION['user_id']) && $_SESSION['user_id'] == $eventDetails['user_id']) : ?>
			<div class="d-grid gap-2 d-sm-flex justify-content-sm-start mb-3">
				<a href="<?= app_url('page/editEvent?id=' . urlencode((string)$eventDetails['id'])) ?>" class="btn btn-primary"><?= __t('edit') ?></a>
				<form method="post" action="<?= app_url('page/deleteEvent') ?>"
      onsubmit="return confirm('<?= __t('are-you-sure-del-event') ?>')"
      style="display:inline">
    <input type="hidden" name="id"
           value="<?= htmlspecialchars($eventDetails['id'], ENT_QUOTES) ?>">
    <button type="submit" class="btn btn-danger"><?= __t('delete') ?></button>
</form>

				<a href="<?= app_url('/') ?>" class="btn btn-secondary"><?= __t('back') ?></a>
			</div>
			<?php
		endif; ?>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"> </script>
	</body>
</html>

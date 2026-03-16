<?php
function coverImage($eventType)
{
	switch ($eventType) {
		case 1:
				return app_url('images/gig.jpg');
		case 2:
				return app_url('images/koncert.jpg');
		case 3:
				return app_url('images/jam.jpg');
		default:
				return app_url('images/default.jpg');
	}
}
?>
<!DOCTYPE html>
<html lang="<?= htmlspecialchars($lang) ?>">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><?= __t('event_list') ?></title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="<?= asset_url('css/styles.css') ?>">
	</head>
	<body class="bg-light">
		<!-- Top Header with Menu -->
		<header class="top-header">
		<?php include __DIR__.'/partials/menu.php' ?>
			<div class="container text-center mt-4 header-custom">
				<h1 class="display-1 header-title">Jamify</h1>
				<p class="lead header-title">From musicians for musicians</p>
			</div>
		</header>

		<!-- Main Content -->
		<div class="container py-4">
			<!-- All Events with Search -->
			<section>
				<h2 class="mb-3"><?= __t('all-events') ?></h2>
				<form method="get" action="" class="row g-3 mb-4">
  <!-- zachowaj wyszukiwarkę -->
  <div class="col-md-4">
    <input type="text" name="q" class="form-control"
           placeholder="<?= __t('search-events') ?>"
           value="<?= htmlspecialchars($searchQuery) ?>">
  </div>

  <!-- filtr po typie wydarzenia -->
  <div class="col-md-3">
    <select name="filter_type" class="form-select">
      <?php foreach ($eventTypes as $t): ?>
      <option value="<?= $t['id'] ?>"
        <?= $filterType == $t['id'] ? 'selected' : '' ?>>
        <?= htmlspecialchars($t['name']) ?>
      </option>
      <?php endforeach; ?>
    </select>
  </div>

  <!-- filtr po gatunku muzycznym -->
  <div class="col-md-3">
    <select name="filter_genre" class="form-select">
      <option value=""><?= __t('All genres') ?></option>
      <?php foreach ($musicGenres as $g): ?>
      <option value="<?= $g['id'] ?>"
        <?= $filterGenre == $g['id'] ? 'selected' : '' ?>>
        <?= htmlspecialchars($g['name']) ?>
      </option>
      <?php endforeach; ?>
    </select>
  </div>

  <!-- przycisk -->
  <div class="col-md-2 d-grid">
    <button type="submit" class="btn btn-primary">
      <?= __t('Filter') ?>
    </button>
  </div>
</form>

				<?php
				if (!empty($allEvents)) : ?>
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-4 g-4">
					<?php
					foreach ($allEvents as $event) : ?>
					<div class="col">
						<div class="card h-100">
							<img src="<?= coverImage($event['event_type_id']) ?>" class="card-img-top" alt="<?= htmlspecialchars($event['title']) ?>">
							<div class="card-body">
								<h5 class="card-title"><?= htmlspecialchars($event['title']) ?></h5>
								<?php
        // pobieramy gatunki dla aktualnego eventu
        $stmtG = $pdo->prepare("
          SELECT g.name
            FROM genres g
            JOIN event_genres eg ON eg.genre_id = g.id
           WHERE eg.event_id = ?
           ORDER BY g.name
        ");
        $stmtG->execute([ $event['id'] ]);
        $genres = $stmtG->fetchAll(PDO::FETCH_COLUMN);
        ?>
        <?php if (!empty($genres)): ?>
          <div class="mb-2">
            <?php foreach($genres as $gName): ?>
              <span class="badge bg-secondary me-1">
                <?= htmlspecialchars($gName) ?>
              </span>
            <?php endforeach; ?>
          </div>
        <?php endif; ?>
								<p class="card-text mb-1">
									<strong><?= htmlspecialchars($event['event_date']) ?></strong><br>
									<?= htmlspecialchars($event['event_time']) ?>
								</p>
								<p class="card-text">
									<?= htmlspecialchars($event['venue_name']) ?>, <?= htmlspecialchars($event['city']) ?>
								</p>
							</div>
							<div class="card-footer text-center">
								<a href="<?= app_url('page/viewEvent/' . urlencode((string)$event['id'])) ?>" class="btn btn-sm btn-outline-info"><?= __t('details') ?></a>
							</div>
						</div>
					</div>
					<?php
				endforeach; ?>
				</div>
				<?php else : ?>
				<div class="alert alert-info"><?= __t('no-events') ?></div>
				<?php
			endif; ?>
			</section>
		</div>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"> </script>
		<script>
			function clearSearch()
			{
				var form = document.getElementById('searchForm');
				form.q.value = '';
				form.submit();
			}
		</script>
	</body>
</html>

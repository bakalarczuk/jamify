<!DOCTYPE html>
<html lang="<?= htmlspecialchars($lang) ?>">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><?= __t('add_event') ?></title>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
		<link rel="stylesheet" href="<?= asset_url('css/styles.css') ?>">

		<script src="<?= app_url('tinymce/js/tinymce/tinymce.min.js') ?>" referrerpolicy="origin"></script>
<script>
  tinymce.init({
    selector: '#description',
    menubar: false,
    plugins: 'emoticons link image lists code',
    toolbar: [
      'undo redo | emoticons | bold italic | alignleft aligncenter alignright',
      'bullist numlist | link image | code'
    ],
    height: 300
  });
</script>

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
			<div class="row justify-content-center">
				<div class="col-12 col-sm-10 col-md-8 col-lg-6">
					<h1 class="mb-4 text-center"><?= __t('add_event') ?></h1>
					<form action="<?= app_url('page/addEvent') ?>" method="post">
						<div class="mb-3">
							<label for="title" class="form-label"><?= __t('form_title') ?>:</label>
							<input type="text" name="title" id="title" class="form-control" required>
						</div>
						<div class="mb-3">
							<label for="description" class="form-label"><?= __t('form_description') ?>:</label>
							<textarea name="description" id="description" class="form-control"></textarea>
						</div>
						<div class="mb-3">
							<label for="event_date" class="form-label"><?= __t('form_date') ?>:</label>
							<input type="datetime-local" name="event_date" id="event_date" class="form-control" required>
						</div>
						<div class="mb-3">
							<label for="event_type_id" class="form-label"><?= __t('form_type') ?>:</label>
							<select name="event_type_id" id="event_type_id" class="form-select" required>
								<?php
								foreach ($eventTypes as $type) : ?>
								<option value="<?= htmlspecialchars($type['id']) ?>"><?= htmlspecialchars($type['name']) ?></option>
								<?php
							endforeach; ?>
							</select>
						</div>
						<div class="mb-3">
<!-- Gatunki muzyczne -->
      <div class="mb-3">
        <label class="form-label"><?= __t('Music Genres') ?></label>
        <div class="d-flex flex-wrap gap-2">
          <?php foreach ($musicGenres as $g): ?>
            <input type="checkbox"
                   class="btn-check"
                   name="genres[]"
                   id="genre-<?= $g['id'] ?>"
                   value="<?= $g['id'] ?>"
                   autocomplete="off">
            <label class="btn btn-outline-secondary"
                   for="genre-<?= $g['id'] ?>">
              <?= htmlspecialchars($g['name']) ?>
            </label>
          <?php endforeach; ?>
        </div>
      </div>
						<div class="mb-3">
							<label for="venue_id" class="form-label"><?= __t('form_venue') ?>:</label>
							<select name="venue_id" id="venue_id" class="form-select" onchange="toggleNewVenueFields()" required>
								<?php
								foreach ($venues as $venue) : ?>
								<option value="<?= htmlspecialchars($venue['id']) ?>"><?= htmlspecialchars($venue['name']) ?></option>
								<?php
							endforeach; ?>
								<option value="new"><?= __t('new_venue') ?></option>
							</select>
						</div>
						<div id="newVenueFields" class="mb-3" style="display:none;">
							<div class="mb-3">
								<label for="venue_name" class="form-label"><?= __t('form_venue') ?>:</label>
								<input type="text" name="venue_name" id="venue_name" class="form-control">
							</div>
							<div class="mb-3">
								<label for="street" class="form-label">Ulica:</label>
								<input type="text" name="street" id="street" class="form-control">
							</div>
							<div class="mb-3">
								<label for="building_number" class="form-label">Nr budynku:</label>
								<input type="text" name="building_number" id="building_number" class="form-control">
							</div>
							<div class="mb-3">
								<label for="local_number" class="form-label">Nr lokalu:</label>
								<input type="text" name="local_number" id="local_number" class="form-control">
							</div>
							<div class="mb-3">
								<label for="city" class="form-label">Miasto:</label>
								<input type="text" name="city" id="city" class="form-control">
							</div>
						</div>
						<div class="d-grid">
							<button type="submit" class="btn btn-primary"><?= __t('save_button') ?></button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"> </script>
		<script>
			function toggleNewVenueFields()
			{
				var venueSelect = document.getElementById('venue_id');
				var newVenueFields = document.getElementById('newVenueFields');
				newVenueFields.style.display = (venueSelect.value === 'new') ? 'block' : 'none';
			}
		</script>
	</body>
</html>

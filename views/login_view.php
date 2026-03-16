<!DOCTYPE html>
<html lang="<?= htmlspecialchars($lang) ?>">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><?= __t('login') ?></title>
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
			<div class="row justify-content-center">
				<div class="col-12 col-sm-10 col-md-8 col-lg-6">
					<h1 class="mb-4 text-center"><?= __t('login_header') ?></h1>
					<?php
					if (isset($error)) : ?>
					<div class="alert alert-danger"><?= htmlspecialchars($error) ?></div>
					<?php
				endif; ?>
					<form action="<?= app_url('page/login') ?>" method="post">
						<div class="mb-3">
							<label for="email" class="form-label"><?= __t('login_email') ?>:</label>
							<input type="email" name="email" id="email" class="form-control" required>
						</div>
						<div class="mb-3">
							<label for="password" class="form-label"><?= __t('login_password') ?>:</label>
							<input type="password" name="password" id="password" class="form-control" required>
						</div>
						<div class="form-check mb-3">
							<input type="checkbox" id="showPassword" class="form-check-input">
							<label for="showPassword" class="form-check-label"><?= __t('login_show_password') ?></label>
						</div>
						<div class="d-grid">
							<button type="submit" class="btn btn-primary"><?= __t('login') ?></button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"> </script>
		<script>
			document.getElementById('showPassword').addEventListener('change', function() {
				document.getElementById('password').type = this.checked ? 'text' : 'password';
			});
		</script>
	</body>
</html>

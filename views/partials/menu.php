<style>
	.top-header {
		background-image: url('<?= asset_url('images/top.jpg') ?>') !important;
	}
</style>

<nav class="navbar navbar-expand-lg navbar-dark navbar-custom">
			<div class="container">
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#topNavbar" aria-controls="topNavbar" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

                <?php if (isset($_SESSION['user_id']) && !empty($_SESSION['user_id'])): ?>
                <div class="d-flex align-items-center me-3">
					<span class="fw-bold me-2"><?= htmlspecialchars($userName ?? '') ?></span>
                </div>
                <?php endif; ?>

				<div class="collapse navbar-collapse" id="topNavbar">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a class="nav-link" href="<?= app_url('/') ?>"><?= __t('home') ?></a></li>
						<?php
						if (isset($_SESSION['user_id']) && !empty($_SESSION['user_id'])) : ?>
						<li class="nav-item"><a class="nav-link" href="<?= app_url('page/your-city-events') ?>"><?= __t('all-events-in') ?></a></li>
						<li class="nav-item"><a class="nav-link" href="<?= app_url('page/addEvent') ?>"><?= __t('add_event') ?></a></li>
						<li class="nav-item"><a class="nav-link" href="<?= app_url('page/logout') ?>"><?= __t('logout') ?></a></li>
						<?php else : ?>
						<li class="nav-item"><a class="nav-link" href="<?= app_url('page/login') ?>"><?= __t('login') ?></a></li>
						<li class="nav-item"><a class="nav-link" href="<?= app_url('page/register') ?>"><?= __t('register') ?></a></li>
						<?php endif; ?>

                        <!-- language switch with flag icons -->
                        <li class="nav-item">
                        <a class="nav-link" href="?lang=pl" aria-label="Polski">
							<img src="<?= app_url('images/flags/pl.png') ?>" alt="PL" class="img-fluid" style="max-width:24px;">
                        </a>
                        </li>
                        <li class="nav-item">
                        <a class="nav-link" href="?lang=en" aria-label="English">
							<img src="<?= app_url('images/flags/gb.png') ?>" alt="EN" class="img-fluid" style="max-width:24px;">
                        </a>
                        </li>
					</ul>
				</div>
			</div>
		</nav>

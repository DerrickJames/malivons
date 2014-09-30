    <ul class="nav nav-pills">
        <li <?php echo $this->uri->segment(4) == '' ? 'class="active"' : '' ?>>
            <a href="<?php echo site_url(SITE_AREA .'/content/maintenances') ?>">Maintenances</a>
        </li>
        <?php if (has_permission('Bonfire.Maintenances.Add')) : ?>
	        <li <?php echo $this->uri->segment(4) == 'create' ? 'class="active"' : '' ?>>
	            <a href="<?php echo site_url(SITE_AREA .'/content/maintenances/create') ?>">Add New</a>
	        </li>
	    <?php endif; ?>
    </ul>
    <ul class="nav nav-pills">
        <li <?php echo $this->uri->segment(4) == '' ? 'class="active"' : '' ?>>
            <a href="<?php echo site_url(SITE_AREA .'/content/assets') ?>">Assets</a>
        </li>
        <?php if (has_permission('Bonfire.Assets.Add')) : ?>
	        <li <?php echo $this->uri->segment(4) == 'create' ? 'class="active"' : '' ?>>
	            <a href="<?php echo site_url(SITE_AREA .'/content/assets/create') ?>">Add New</a>
	        </li>
	    <?php endif; ?>
    </ul>
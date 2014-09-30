    <div class="admin-box">

        <?php echo form_open(current_url(), 'class="form-horizontal"'); ?>

            <div class="control-group <?php if (form_error('asset')) echo 'error'; ?>">
                <label for="asset">Asset</label>
                <div class="controls">
                    <select name="asset" class="input-xxlarge" tabindex="6">
                        <option value="">Select An Asset</option>
                        <?php if (isset($assets) && is_array($assets)) : ?>
                            <?php foreach($assets as $asset) : ?>
                                <option value="<?php echo $asset->id ?>" <?php echo set_select('asset', $asset->id); ?>><?php e($asset->name); ?></option>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </select>
                    <?php if (form_error('asset')) echo '<span class="help-inline">'. form_error('asset') .'</span>'; ?>
                </div>
            </div>

            <div class="control-group <?php if (form_error('provider')) echo 'error'; ?>">
                <label for="provider">Provider</label>
                <div class="controls">
                    <input type="text" name="provider" class="input-xxlarge" value="<?php echo isset($maintenance) ? $maintenance->provider : set_value('provider'); ?>" tabindex="1" />
                    <?php if (form_error('provider')) echo '<span class="help-inline">'. form_error('provider') .'</span>'; ?>
                </div>
            </div>

            <div class="control-group <?php if (form_error('commence_date')) echo 'error'; ?>">
                <label for="commence_date">Commence Date</label>
                <div class="controls">
                    <input type="" name="commence_date" id="commence_date" class="form-control datepicker" value="<?php echo isset($maintenance) ? $maintenance->commence_date : set_value('commence_date'); ?>" tabindex="3" />
                    <?php if (form_error('commence_date')) echo '<span class="help-inline">'. form_error('commence_date') .'</span>'; ?>
                </div>
            </div>

            <div class="control-group <?php if (form_error('expiry_date')) echo 'error'; ?>">
                <label for="expiry_date">Expiry Date</label>
                <div class="controls">
                    <input type="" name="expiry_date" id="expiry_date" class="form-control datepicker" value="<?php echo isset($maintenance) ? $maintenance->expiry_date : set_value('expiry_date'); ?>" tabindex="3" />
                    <?php if (form_error('expiry_date')) echo '<span class="help-inline">'. form_error('expiry_date') .'</span>'; ?>
                </div>
            </div>

            <div class="control-group <?php if (form_error('cost')) echo 'error'; ?>">
                <label for="cost">Maintenance Cost</label>
                <div class="controls">
                    <input type="text" name="cost" class="input-xxlarge" value="<?php echo isset($maintenance) ? $maintenance->cost : set_value('cost'); ?>" tabindex="4"/>
                    <?php if (form_error('cost')) echo '<span class="help-inline">'. form_error('cost') .'</span>'; ?>
                </div>
            </div>

            <div class="control-group <?php if (form_error('frequency')) echo 'error'; ?>">
                <label for="frequency">Frequency</label>
                <div class="controls">
                    <input type="text" name="frequency" class="input-xxlarge" value="<?php echo isset($maintenance) ? $maintenance->frequency : set_value('frequency'); ?>" tabindex="1" />
                    <?php if (form_error('frequency')) echo '<span class="help-inline">'. form_error('frequency') .'</span>'; ?>
                </div>
            </div>

            <div class="form-actions">
                <input type="submit" name="submit" class="btn btn-primary" value="Save" />
                or <a href="<?php echo site_url(SITE_AREA .'/content/maintenances') ?>">Cancel</a>
            </div>

        <?php echo form_close(); ?>
    </div>

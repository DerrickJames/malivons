    <div class="admin-box">

        <?php echo form_open(current_url(), 'class="form-horizontal"'); ?>

            <div class="control-group <?php if (form_error('name')) echo 'error'; ?>">
                <label for="name">Asset Name</label>
                <div class="controls">
                    <input type="text" name="name" class="input-xxlarge" value="<?php echo isset($asset) ? $asset->name : set_value('name'); ?>" tabindex="1" />
                    <?php if (form_error('name')) echo '<span class="help-inline">'. form_error('name') .'</span>'; ?>
                </div>
            </div>

            <div class="control-group <?php if (form_error('cost_price')) echo 'error'; ?>">
                <label for="cost_price">Cost Price</label>
                <div class="controls">
                    <input type="text" name="cost_price" class="input-xxlarge" value="<?php echo isset($asset) ? $asset->cost_price : set_value('cost_price'); ?>" tabindex="2" />
                    <?php if (form_error('cost_price')) echo '<span class="help-inline">'. form_error('cost_price') .'</span>'; ?>
                </div>
            </div>

            <div class="control-group <?php if (form_error('purchase_date')) echo 'error'; ?>">
                <label for="purchase_date">Purchase Date</label>
                <div class="controls">
                    <input type="" name="purchase_date" id="purchase_date" class="form-control datepicker" value="<?php echo isset($asset) ? $asset->purchase_date : set_value('purchase_date'); ?>" tabindex="3" />
                    <?php if (form_error('purchase_date')) echo '<span class="help-inline">'. form_error('purchase_date') .'</span>'; ?>
                </div>
            </div>

            <div class="control-group <?php if (form_error('vendors_name')) echo 'error'; ?>">
                <label for="vendors_name">Vendors Name</label>
                <div class="controls">
                    <input type="text" name="vendors_name" class="input-xxlarge" value="<?php echo isset($asset) ? $asset->vendors_name : set_value('vendors_name'); ?>" tabindex="4"/>
                    <?php if (form_error('vendors_name')) echo '<span class="help-inline">'. form_error('vendors_name') .'</span>'; ?>
                </div>
            </div>

            <div class="control-group <?php if (form_error('branch')) echo 'error'; ?>">
                <label for="branch">Branch</label>
                <div class="controls">
                    <select name="branch" class="input-xxlarge" tabindex="5">
                        <option value="" <?php echo set_select('branch', ''); ?>>Select Branch</option>
                        <option value="Mombasa" <?php echo set_select('branch', 'Mombasa'); ?>>Mombasa</option>
                        <option value="Nairobi" <?php echo set_select('branch', 'Nairobi'); ?>>Nairobi</option>
                    </select>
                    <?php if (form_error('branch')) echo '<span class="help-inline">'. form_error('branch') .'</span>'; ?>
                </div>
            </div>

            <div class="control-group <?php if (form_error('department')) echo 'error'; ?>">
                <label for="department">Department</label>
                <div class="controls">
                    <select name="department" class="input-xxlarge" tabindex="6">
                        <option value="">Select Department</option>
                        <option value="Transport" <?php echo set_select('department', 'Transport'); ?>>Transport</option>
                        <option value="Human Resource" <?php echo set_select('department', 'Human Resource'); ?>>Human Resource</option>
                    </select>
                    <?php if (form_error('department')) echo '<span class="help-inline">'. form_error('department') .'</span>'; ?>
                </div>
            </div>

            <div class="control-group <?php if (form_error('depreciation_rate')) echo 'error'; ?>">
                <label for="depreciation_rate">Depreciation Rate (&#37;)</label>
                <div class="controls">
                    <input type="text" name="depreciation_rate" class="input-xxlarge" value="<?php echo isset($asset) ? $asset->depreciation_rate : set_value('depreciation_rate'); ?>" tabindex="7"/>
                    <?php if (form_error('depreciation_rate')) echo '<span class="help-inline">'. form_error('depreciation_rate') .'</span>'; ?>
                </div>
            </div>

            <div class="control-group <?php if (form_error('depreciation_time')) echo 'error'; ?>">
                <label for="depreciation_time">Depreciation Time(Months)</label>
                <div class="controls">
                    <input type="text" name="depreciation_time" class="input-xxlarge" value="<?php echo isset($asset) ? $asset->depreciation_time : set_value('depreciation_time'); ?>" tabindex="7"/>
                    <?php if (form_error('depreciation_time')) echo '<span class="help-inline">'. form_error('depreciation_time') .'</span>'; ?>
                </div>
            </div>

            <div class="form-actions">
                <input type="submit" name="submit" class="btn btn-primary" value="Save" />
                or <a href="<?php echo site_url(SITE_AREA .'/content/store') ?>">Cancel</a>
            </div>

        <?php echo form_close(); ?>
    </div>

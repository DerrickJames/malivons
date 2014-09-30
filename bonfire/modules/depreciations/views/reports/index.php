    <div class="admin-box">
     <!--   <h3></h3> -->

        <?php echo form_open(); ?>

            <table class="table table-striped table-hover">
                <thead>
                    <tr class="">
                        <th class="column-check"><input class="check-all" type="checkbox" /></th>
                        <th>Asset Name</th>
                        <th>Cost Price</th>
                        <th>Purchase Date</th>
                        <th>Vendors Name</th>
                        <th>Branch</th>
                        <th>Department</th>
                        <th>Depreciation Rate</th>
                        <th>Recorded By</th>
                        <th style="width: 10em">Date</th>
                        <!-- <th></th> -->
                    </tr>
                </thead>
                <tfoot>
                    <?php if (has_permission('Bonfire.Assets.Delete')) : ?>
                        <tr>
                            <td colspan="10">
                                With selected:
                                <input type="submit" name="delete" class="btn btn-danger" value="Delete">
                            </td>
                        </tr>
                    <?php endif; ?>
                </tfoot>
                <tbody>
                <?php if (isset($assets) && is_array($assets)) :?>
                    <?php foreach ($assets as $asset) : ?>
                    <tr class="">
                        <td><input type="checkbox" name="checked[]" value="<?php echo $asset->id ?>" /></td>
                        <td>
                            <?php if (has_permission('Bonfire.Assets.Manage')) : ?>
                                <a href="<?php echo site_url(SITE_AREA .'/content/assets/update/'. $asset->id) ?>">
                            <?php endif; ?>
                                <?php e($asset->name); ?>
                            <?php if (has_permission('Bonfire.Assets.Manage')) : ?>
                                </a>
                            <?php endif; ?>
                        </td>
                        <td><?php e($asset->cost_price); ?></td>
                        <td><?php e($asset->purchase_date); ?></td>
                        <td><?php e($asset->vendors_name); ?></td>
                        <td><?php e($asset->branch); ?></td>
                        <td><?php e($asset->department); ?></td>
                        <td><?php e($asset->depreciation_rate); ?></td>
                        <td><?php e($current_user->display_name); ?></td>
                        <td><?php e($asset->created_on); ?></td>
                    </tr>
                    <?php endforeach; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="10">
                            <br/>
                            <div class="alert alert-warning">
                                No Assets found.
                            </div>
                        </td>
                    </tr>
                <?php endif; ?>
                </tbody>
            </table>

        <?php echo form_close(); ?>
    </div>

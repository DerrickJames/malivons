    <div class="admin-box">
     <!--   <h3></h3> -->

        <?php echo form_open(); ?>

            <table class="table table-striped table-hover">
                <thead>
                    <tr class="">
                        <th>Asset Name</th>
                        <th>Cost Price</th>
                        <th>Purchase Date</th>
                        <th>Vendors Name</th>
                        <th>Branch</th>
                        <th>Department</th>
                        <th>Depreciation Rate</th>
                        <th>Depreciation Time</th>
                        <th>Recorded By</th>
                        <th style="width: 10em">Date</th>
                        <!-- <th></th> -->
                    </tr>
                </thead>
               
                <tbody>
                <?php if (isset($assets) && is_array($assets)) :?>
                    <?php foreach ($assets as $asset) : ?>
                    <tr class="">
                        <td>
                            <?php if (has_permission('Bonfire.Assets.Manage')) : ?>
                                <a href="<?php echo site_url(SITE_AREA .'/reports/assets/show/'. $asset->id) ?>">
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
                        <td><?php e($asset->depreciation_rate); ?>&#37;</td>
                        <td><?php e($asset->depreciation_time); ?> (Months)</td>
                        <td><?php e($current_user->display_name); ?></td>
                        <td><?php e($asset->created_on); ?></td>
                    </tr>
                    <?php endforeach; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="11">
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

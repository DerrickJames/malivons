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
                        <th>Branch</th>
                        <th>Department</th>
                        <th>Depreciation Rate</th>
                        <th>Depreciation Time</th>
                        <th>Depreciation Amount</th>
                        <th>Net Book Value</th>
                        <th style="width: 10em">Date</th>
                    </tr>
                </thead>
                <tfoot>
                    <?php if (has_permission('Bonfire.Assets.Delete')) : ?>
                        <tr>
                            <td colspan="11">
                                With selected:
                                <input type="submit" name="delete" class="btn btn-danger" value="Delete">
                            </td>
                        </tr>
                    <?php endif; ?>
                </tfoot>
                <tbody>
                <?php if (isset($depreciations) && is_array($depreciations)) :?>
                    <?php foreach ($depreciations as $depreciation) : ?>
                    <tr class="">
                        <td><input type="checkbox" name="checked[]" value="<?php echo $depreciation->id ?>" /></td>
                        <td>
                            <?php if (has_permission('Bonfire.Assets.Manage')) : ?>
                                <a href="<?php echo site_url(SITE_AREA .'/reports/assets/show/'. $depreciation->id) ?>">
                            <?php endif; ?>
                                <?php e($depreciation->name); ?>
                            <?php if (has_permission('Bonfire.Assets.Manage')) : ?>
                                </a>
                            <?php endif; ?>
                        </td>
                        <td><?php e($depreciation->cost_price); ?></td>
                        <td><?php e($depreciation->purchase_date); ?></td>
                        <td><?php e($depreciation->branch); ?></td>
                        <td><?php e($depreciation->department); ?></td>
                        <td><?php e($depreciation->depreciation_rate); ?>&#37;</td>
                        <td><?php e($depreciation->depreciation_time); ?> (Months)</td>
                        <td><?php e($depreciation->depreciation_amount); ?></td>
                        <td><?php e($depreciation->net_book_value); ?></td>
                        <td><?php e($depreciation->created_on); ?></td>
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

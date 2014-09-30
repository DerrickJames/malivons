    <div class="admin-box">
     <!--   <h3></h3> -->

        <?php echo form_open(); ?>

            <table class="table table-striped table-hover">
                <thead>
                    <tr class="">
                        <th class="column-check"><input class="check-all" type="checkbox" /></th>
                        <th>Asset Name</th>
                        <th>Provider</th>
                        <th>Commence Date</th>
                        <th>Expiry Date</th>
                        <th>Cost</th>
                        <th>Frequency</th>
                        <th>Recorded By</th>
                        <th style="width: 10em">Date</th>
                    </tr>
                </thead>
                <tfoot>
                    <?php if (has_permission('Bonfire.Maintenances.Delete')) : ?>
                        <tr>
                            <td colspan="10">
                                With selected:
                                <input type="submit" name="delete" class="btn btn-danger" value="Delete">
                            </td>
                        </tr>
                    <?php endif; ?>
                </tfoot>
                <tbody>
                <?php if (isset($maintenances) && is_array($maintenances)) : ?>
                    <?php foreach ($maintenances as $maintenance) : ?>
                        <tr class="">
                            <td><input type="checkbox" name="checked[]" value="<?php echo $maintenance->id ?>" /></td>
                            <td><?php e($maintenance->name); ?></td>
                            <td>
                                <?php if (has_permission('Bonfire.Maintenances.Manage')) : ?>
                                    <a href="<?php echo site_url(SITE_AREA .'/content/maintenances/update/'. $maintenance->id) ?>">
                                <?php endif; ?>
                                    <?php e($maintenance->provider); ?>
                                <?php if (has_permission('Bonfire.Maintenances.Manage')) : ?>
                                    </a>
                                <?php endif; ?>
                            </td>
                            <td><?php e($maintenance->commence_date); ?></td>
                            <td><?php e($maintenance->expiry_date); ?></td>
                            <td><?php e($maintenance->cost); ?></td>
                            <td><?php e($maintenance->frequency); ?></td>
                            <td><?php e($current_user->display_name); ?></td>
                            <td><?php e($maintenance->created_on); ?></td>
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

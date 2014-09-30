    <div class="admin-box">
     <!--   <h3></h3> -->

        <?php echo form_open(current_url()); ?>

            <table class="table">
                <thead>
                    <tr class="">
                        <th>ID</th>
                        <th>Asset Name</th>
                        <th>Purchase Date</th>
                        <th>Branch</th>
                        <th>Department</th>
                        <th>Depreciation Rate</th>
                        <th>Depreciation Time</th>
                    </tr>
                </thead>
                <tbody>
                <?php if (isset($asset)) :?>
                    <tr class="">
                        <td><?php e($asset->id); ?></td>
                        <td><?php e($asset->name); ?></td>
                        <td><?php e($asset->cost_price); ?></td>
                        <td><?php e($asset->branch); ?></td>
                        <td><?php e($asset->department); ?></td>
                        <td><?php e($asset->depreciation_rate); ?>&#37;</td>
                        <td><?php e($asset->depreciation_time); ?> (Months)</td>
                    </tr>
                <?php endif; ?>
                </tbody>
            </table>

            <fieldset>
                <legend>Asset Depreciations</legend>
                <div class="table-responsive">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Date</th>
                                <th>Particulars</th>
                                <th>Total</th>
                                <th>Net Book Value</th>
                            </tr>
                        </thead>
                         <tfoot>
                            <?php if (has_permission('Bonfire.Assets.Add')) : ?>
                                <tr>
                                    <td colspan="4">
                                        <input type="hidden" name="asset_id" value="<?php e($asset->id); ?>">
                                        <input type="submit" name="depreciation" class="btn btn-primary" value="Calculate Depreciation">
                                    </td>
                                </tr>
                            <?php endif; ?>
                        </tfoot>
                        <tbody>
                            <tr>
                                <td><?php e($asset->created_on); ?></td>
                                <td colspan="2">Cost Price</td>
                                <td><?php e($asset->cost_price); ?></td>
                            </tr>
                    <?php if (isset($depreciations) && is_array($depreciations)) : ?>
                        <?php foreach ($depreciations as $depreciation) : ?>    
                                <tr>
                                    <td><?php e($depreciation->created_on); ?></td>
                                    <td>Depreciation <?php e($asset->depreciation_rate); ?>&#37;</td>
                                    <td>(<?php e($depreciation->depreciation_amount); ?>)</td>
                                    <td><?php e($depreciation->net_book_value); ?></td>
                                </tr>
                        <?php endforeach; ?>
                    <?php else : ?>            
                                <tr>
                                    <td colspan="8"><div class="alert alert-warning">No Depreciations Recorded Yet.</div></td>
                                </tr>
                    <?php endif; ?>        
                        </tbody>
                    </table>
                </div>  
            </fieldset>

        <?php echo form_close(); ?>
    </div>

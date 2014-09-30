<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Depreciation_model extends BF_Model
{

    protected $table_name   = 'depreciations';
    protected $key          = 'id';
    protected $set_created  = true;
    protected $set_modified = true;
    protected $soft_deletes = false;
    protected $log_user     = true;
    protected $date_format  = 'datetime';

    //---------------------------------------------------------------

    protected $validation_rules = array(
        array(
            'field' => 'depreciation_rate',
            'label' => 'Depreciation Rate',
            'rules' => 'trim|strip_tags|xss_clean|integer|max_length[11]'
        ),
        array(
            'field' => 'depreciation_amount',
            'label' => 'Depreciation Amount',
            'rules' => 'trim|strip_tags|xss_clean'
        )
    );

    protected $insert_validation_rules = array(
        'depreciation_rate'     => 'required',
        'depreciation_amount'   => 'required',
    );

    /**
     * Constructor
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();

    } // end __construct()

    //-----------------------------------------------------------------------------------

    /**
     * Calculate the depreciation of an asset per year using the reducing balance method
     * 
     */
    public function reducingMethod()
    {
        $this->load->model('asset_model');

        $assets     = $this->asset_model->select(
                                            'id, cost_price, depreciation_rate,
                                             depreciation_time, created_on')
                                        ->find_all();

        if (isset($assets))
        {
            foreach ($assets as $asset) {
                $depreciation_time  = $asset->depreciation_time / 12;
                $rate               = $asset->depreciation_rate;

                // Do we have any depreciations yet
                $query = $this->db->where('asset_id', $asset->id)
                                           ->select('net_book_value')
                                           ->find_all();

                if (isset($query) && $query->count_all() < $depreciation_time)
                {
                    $current_book_value = $query->last_row->net_book_value;

                    // $depreciation = Cost($current_book_value) * R * T
                    $depreciation   = $current_book_value * ($rate / 100) * 1;
                    $net_book_value = $current_book_value - $depreciation;

                    $data = [
                        'depreciation_amount'   => $depreciation,
                        'net_book_value'        => $net_book_value,
                        'asset_id'              => $asset->id
                    ];

                    parent::insert($data);
                }
                else
                {
                    $cost_price     = $asset->cost_price;
                    $depreciation   = $cost_price *  ($rate / 100) * 1;
                    $net_book_value = $cost_price - $depreciation;

                    $data = [
                        'depreciation_amount'   => $depreciation,
                        'net_book_value'        => $net_book_value,
                        'asset_id'              => $asset->id
                    ];

                    parent::insert($data);
                }
            } 
        }
    } 
}
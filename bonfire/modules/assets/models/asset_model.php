<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Asset_model extends BF_Model
{

    protected $table_name           = 'assets';
    protected $depreciations_table  = 'depreciations';
    protected $key                  = 'id';
    protected $set_created          = true;
    protected $set_modified         = true;
    protected $soft_deletes         = false;
    protected $log_user             = true;
    protected $date_format          = 'datetime';

    //---------------------------------------------------------------

    protected $validation_rules = array(
        array(
            'field' => 'name',
            'label' => 'Asset Name',
            'rules' => 'trim|strip_tags|xss_clean|max_length[50]'
        ),
        array(
            'field' => 'cost_price',
            'label' => 'Cost Price',
            'rules' => 'trim|strip_tags|xss_clean'
        ),
        array(
            'field' => 'purchase_date',
            'label' => 'Purchase Date',
            'rules' => 'trim|strip_tags|xss_clean'
        ),
        array(
            'field' => 'vendors_name',
            'label' => 'Vendors Name',
            'rules' => 'trim|strip_tags|xss_clean|max_length[50]'
        ),
        array(
            'field' => 'branch',
            'label' => 'Branch',
            'rules' => 'trim|strip_tags|xss_clean|max_length[50]|required'
        ),
        array(
            'field' => 'department',
            'label' => 'Department',
            'rules' => 'trim|strip_tags|xss_clean|max_length[50]|required'
        ),
        array(
            'field' => 'depreciation_rate',
            'label' => 'Depreciation Rate',
            'rules' => 'trim|strip_tags|xss_clean|max_length[11]'
        ),
        array(
            'field' => 'depreciation_time',
            'label' => 'Depreciation Time (Months)',
            'rules' => 'trim|strip_tags|xss_clean|max_length[5]|required|integer'
        )
    );

    protected $insert_validation_rules = array(
        'name'                  => 'required',
        'cost_price'            => 'required',
        'purchase_date'         => 'required',
        'vendors_name'          => 'required',
        'branch'                => 'required',
        'department'            => 'required',
        'depreciation_rate'     => 'required'
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
    public function reducing_method($asset_id)
    {
        $this->select('id, cost_price, depreciation_rate, depreciation_time, created_on');
        $asset = parent::find($asset_id);

        if (isset($asset))
        {
            $depreciation_time  = $asset->depreciation_time / 12;
            $rate               = $asset->depreciation_rate;

            // Do we have any depreciations yet
            // $query = $this->db->where('asset_id', $asset_id)
            //                            ->select('net_book_value')
            //                            ->find_all();

            $query = $this->db->select('net_book_value')
                              ->where('asset_id', $asset_id)
                              ->get($this->depreciations_table);

            if ($query->num_rows() > 0)
            {
                if ($query->num_rows() < $depreciation_time)
                {
                    $row = $query->last_row();
                    $current_book_value = $row->net_book_value;

                    echo "<pre>";
                    var_dump($current_book_value);

                    // $depreciation = Cost($current_book_value) * R * T
                    $depreciation   = $current_book_value * ($rate / 100) * 1;
                    $net_book_value = $current_book_value - $depreciation;

                    $data = [
                        'depreciation_amount'   => $depreciation,
                        'net_book_value'        => $net_book_value,
                        'asset_id'              => $asset_id,
                        'created_on'            => date('Y-m-j H:i:s')
                    ];

                    $this->db->insert($this->depreciations_table, $data);

                    return true;
                }
                
                return false;   
            }
            else
            {
                $cost_price     = $asset->cost_price;
                $depreciation   = $cost_price *  ($rate / 100) * 1;
                $net_book_value = $cost_price - $depreciation;

                $data = [
                    'depreciation_amount'   => $depreciation,
                    'net_book_value'        => $net_book_value,
                    'asset_id'              => $asset_id,
                    'created_on'            => date('Y-m-j H:i:s')
                ];

                $this->db->insert($this->depreciations_table, $data);

                return true;
            }
        }
    }

}
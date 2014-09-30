<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Maintenance_model extends BF_Model
{

    protected $table_name   = 'maintenances';
    protected $key          = 'id';
    protected $set_created  = true;
    protected $set_modified = true;
    protected $soft_deletes = false;
    protected $log_user     = true;
    protected $date_format  = 'datetime';

    //---------------------------------------------------------------

    protected $validation_rules = array(
        array(
            'field' => 'provider',
            'label' => 'Provider',
            'rules' => 'trim|strip_tags|xss_clean|max_length[50]'
        ),
        array(
            'field' => 'commence_date',
            'label' => 'Commence Date',
            'rules' => 'trim|strip_tags|xss_clean'
        ),
        array(
            'field' => 'expiry_date',
            'label' => 'Expiry Date',
            'rules' => 'trim|strip_tags|xss_clean'
        ),
        array(
            'field' => 'cost',
            'label' => 'Cost',
            'rules' => 'trim|strip_tags|xss_clean'
        ),
        array(
            'field' => 'frequency',
            'label' => 'Frequency',
            'rules' => 'trim|strip_tags|xss_clean'
        ),
        array(
            'field' => 'asset',
            'label' => 'Asset Name',
            'rules' => 'trim|strip_tags|xss_clean|required'
        )
    );

    protected $insert_validation_rules = array(
        'provider'      => 'required',
        'commence_date' => 'required',
        'expiry_date'   => 'required',
        'cost'          => 'required',
        'frequency'     => 'required',
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


}
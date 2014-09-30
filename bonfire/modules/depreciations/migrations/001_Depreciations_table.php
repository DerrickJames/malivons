<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Migration_Depreciations_table extends Migration
{
    /******************************************************************
     * Table Name
     */
    /**
     * @var string The name of the depreciations table
     */
    protected $depreciations_table  = 'depreciations';

    /*******************************************************************
     * Depreciations Table Fields Definition
     */
    /**
     * @var array Fields for the Depreciations Table
     */
    protected $depreciation_fields         = array(
        'id'    => array(
            'type'              => 'INT',
            'constraint'        => 11,
            'unsigned'          => true,
            'auto_increment'    => true
        ),
        'depreciation_amount'   => array(
            'type'            => 'FLOAT'
        ),
        'net_book_value'   => array(
            'type'            => 'FLOAT'
        ),
        'asset_id'    => array(
            'type'              => 'INT',
            'constraint'        => 11,
            'unsigned'          => true
        ),
        'created_on'    => array(
            'type'      => 'DATETIME'
        ),
        'created_by'    => array(
            'type'          => 'INT',
            'constraint'    => 11,
            'unsigned'      => TRUE
        ),
        'modified_on' => array(
            'type'      => 'DATETIME',
            'null'      => TRUE
        ),
        'modified_by' => array(
            'type'          => 'INT',
            'constraint'    => 11,
            'unsigned'      => TRUE,
            'null'          => TRUE
        ),
        'deleted' => array(
            'type'          => 'TINYINT',
            'constraint'    => 1,
            'default'       => 0
        ),
        'deleted_by' => array(
            'type'          => 'INT',
            'constraint'    => 11,
            'unsigned'      => TRUE,
            'null'          => TRUE
        )
    );

    //----------------------------------------------------------------------------------------

    // Install the migrations
    public function up()
    {
        $this->load->dbforge();

        //depreciations table
        if (! $this->db->table_exists($this->depreciations_table))
        {
           $this->dbforge->add_field($this->depreciation_fields);
           $this->dbforge->add_key('asset_id');
           $this->dbforge->add_key('id', TRUE);

            $this->dbforge->create_table($this->depreciations_table);   
        }

        // Create the Permissions
        $this->load->model('permission_model');
        $this->permission_model->insert(array(
            'name'          => 'Bonfire.Depreciations.View',
            'description'   => 'To view the depreciations menu.',
            'status'        => 'active'
        ));

        // Assign them to the admin role
        $this->load->model('role_permission_model');
        $this->role_permission_model->assign_to_role('Administrator', 'Bonfire.Depreciations.View');
    }

    //--------------------------------------------------------------------

    //Uninstall the migrations
    public function down()
    {
        $this->load->dbforge();

        $this->dbforge->drop_table($this->depreciations_table);
    }

    //--------------------------------------------------------------------

}
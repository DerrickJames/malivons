<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Migration_Assets_tables extends Migration
{
    /******************************************************************
     * Table Name
     */
    /**
     * @var string The name of the Assets table
     */
    protected $assets_table         = 'assets';

    /*******************************************************************
     * Assets Table Fields Definition
     */
    /**
     * @var array Fields for the Assets Table
     */
    protected $asset_fields         = array(
        'id'    => array(
            'type'              => 'INT',
            'constraint'        => 11,
            'unsigned'          => true,
            'auto_increment'    => true
        ),
        'name'  => array(
            'type'          => 'VARCHAR',
            'constraint'    => 50
        ),
        'cost_price'    => array(
            'type'          => 'FLOAT'
        ),
        'purchase_date' => array(
            'type'      => 'DATETIME'
        ),
        'vendors_name'  => array(
            'type'          => 'VARCHAR',
            'constraint'    => 50
        ),
        'branch'  => array(
            'type'          => 'VARCHAR',
            'constraint'    => 50
        ),
        'department'    => array(
            'type'          => 'VARCHAR',
            'constraint'    => 50
        ),
        'depreciation_rate' => array(
            'type'          => 'INT',
            'constraint'    => 11
        ),
        'depreciation_time' => array(
            'type'          => 'INT',
            'constraint'    => 5
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

        // assets table
        if (! $this->db->table_exists($this->assets_table))
        {
            $this->dbforge->add_field($this->asset_fields);
            $this->dbforge->add_key('id', TRUE);

            $this->dbforge->create_table($this->assets_table);
        }

        // Create the Permissions
        $this->load->model('permission_model');
        $this->permission_model->insert(array(
            'name'          => 'Bonfire.Assets.View',
            'description'   => 'To view the assets menu.',
            'status'        => 'active'
        ));

        // Assign them to the admin role
        $this->load->model('role_permission_model');
        $this->role_permission_model->assign_to_role('Administrator', 'Bonfire.Assets.View');
    }

    //--------------------------------------------------------------------

    //Uninstall the migrations
    public function down()
    {
        $this->load->dbforge();

        $this->dbforge->drop_table($this->assets_table);
    }

    //--------------------------------------------------------------------

}
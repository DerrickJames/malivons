<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Migration_Maintenances_tables extends Migration
{
    /******************************************************************
     * Table Name
     */
    /**
     * @var string The name of the Maintenancesssssssssssssssssss table
     */
    protected $maintenances_table    = 'maintenances';

    /*******************************************************************
     * Maintenance Table Fields Definition
     */
    /**
     * @var array Fields for the Maintenance Table
     */
    protected $maintenance_fields         = array(
        'id'    => array(
            'type'              => 'INT',
            'constraint'        => 11,
            'unsigned'          => true,
            'auto_increment'    => true
        ),
        'provider'  => array(
            'type'          => 'VARCHAR',
            'constraint'    => 50
        ),
        'commence_date'   => array(
            'type'            => 'DATETIME'
        ),
        'expiry_date'   => array(
            'type'            => 'DATETIME'
        ),
        'cost'    => array(
            'type'              => 'FLOAT'
        ),
        'frequency' =>  array(
            'type'          => 'VARCHAR',
            'constraint'    => 50
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

        //maintenances table
        if ( ! $this->db->table_exists($this->maintenances_table))
        {
            $this->dbforge->add_field($this->maintenance_fields);
            $this->dbforge->add_key('asset_id');
            $this->dbforge->add_key('id', TRUE);

            $this->dbforge->create_table($this->maintenances_table);
        }

        // Create the Permissions
        $this->load->model('permission_model');
        $this->permission_model->insert(array(
            'name'          => 'Bonfire.Maintenances.View',
            'description'   => 'To view the maintenances menu.',
            'status'        => 'active'
        ));

        // Assign them to the admin role
        $this->load->model('role_permission_model');
        $this->role_permission_model->assign_to_role('Administrator', 'Bonfire.Maintenances.View');
    }

    //--------------------------------------------------------------------

    //Uninstall the migrations
    public function down()
    {
        $this->load->dbforge();

        $this->dbforge->drop_table($this->maintenances_table);
    }

    //--------------------------------------------------------------------

}
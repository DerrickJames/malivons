<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Content extends Admin_Controller
{

    public function __construct()
    {
        parent::__construct();

        $this->load->model('maintenance_model'); 

        Assets::Add_module_js('assets', 'app.js');
        Assets::Add_module_css('assets', 'style.css');
        Template::set('toolbar_title', 'Maintenance Records');
        Template::set_block('sub_nav', 'content/sub_nav');
    }

    //--------------------------------------------------------------------

    public function index()
    {
        // Check for any actions
        if (isset($_POST['delete'])) $action = '_delete';

        if (isset($action))
        {
            $checked = $this->input->post('checked');

            if (! empty($checked) )
            {
                foreach($checked as $maintenance_id)
                {
                   $this->_delete($maintenance_id); 
                }
            }
            else
            {
                Template::set_message('Select a record to delete!', 'error');
            }
        }

        log_activity($this->current_user->id, "Accessed the Maintenance Book!", 'maintenances');

        $this->db->join('assets', 'assets.id = maintenances.asset_id', 'left');
        $query = $this->db->select('maintenances.id, provider, commence_date, expiry_date,
                                    cost, frequency, maintenances.created_by, 
                                    maintenances.created_on, name')
                          ->get($this->maintenance_model->get_table());
    	$maintenances = $query->result();
    	Template::set('maintenances', $maintenances);
        
        Template::render();
    }

    //--------------------------------------------------------------------------------------

    public function create()
    {

    	if ( $this->input->post('submit') )
        {
            $maintenance = array(
                'provider'             => $this->input->post('provider'),
                'commence_date'        => $this->input->post('commence_date'),
                'expiry_date'          => $this->input->post('expiry_date'),
                'cost'                 => $this->input->post('cost'),
                'frequency'            => $this->input->post('frequency'),
                'asset_id'             => $this->input->post('asset')
            );

            if ( $this->maintenance_model->insert($maintenance) )
            { 
                log_activity($this->current_user->id, "Recorded a new maintenance record", 'maintenances');
                Template::set_message('Maintenance record successfully recorded.', 'success' );
                redirect(SITE_AREA .'/content/maintenances');
            }
        }

        Template::set('assets', $this->_getAssets());
    	Template::set('toolbar_title', 'Create A New Record');
    	Template::set_view('content/post_form');
    	Template::render();	
    }

    //--------------------------------------------------------------------

    public function update($id=null)
    {
        if ($this->input->post('submit'))
        {
            $maintenance = array(
                'provider'             => $this->input->post('provider'),
                'commence_date'        => $this->input->post('commence_date'),
                'expiry_date'          => $this->input->post('expiry_date'),
                'cost'                 => $this->input->post('cost'),
                'frequency'            => $this->input->post('frequency'),
                'asset_id'             => $this->input->post('asset')
            );

            if ($this->maintenance_model->update($id, $maintenance))
            {
                log_activity($this->current_user->id, "Updated a maintenance record", 'maintenances');
                Template::set_message( 'Maintenance record successfully updated.', 'success' );
                redirect(SITE_AREA .'/content/maintenances');
            }
        }

        $maintenance = $this->maintenance_model->find($id);

        Template::set('assets', $this->_getAssets());
        Template::set('maintenance', $maintenance);
        Template::set('toolbar_title', 'Update Maintenance Record');
        Template::set_view('/content/post_form');
        Template::render();
    }

    //--------------------------------------------------------------------------------------------------------

    /**
     * Destroy a maintenance record
     * 
     * @access private
     *
     * @param int $maintenance_id
     *
     * @return void
     */
    private function _delete($id)
    {
        $maintenance = $this->maintenance_model->find($id)->name;

        if ($this->maintenance_model->delete($id) )
        {
            log_activity($this->current_user->id, "Deleted a maintenance record", 'maintenances');

            Template::set_message( 'Maintenance record successfully deleted.', 'success' );
            redirect(SITE_AREA .'/content/maintenances');
        }
        else
        {
            Template::set_message('Record not deleted!'. $this->maintenance_model->error, 'error');
        }
    }

    //-------------------------------------------------------------------------------------------------------

    /**
     * Return assets list
     * 
     * @access private
     *
     * @return object
     */
    private function _getAssets()
    {
        $this->load->model('assets/asset_model');

        $assets = $this->asset_model->select('id, name')->find_all();

        return $assets;
    }


}// end Content controller
// end content.php
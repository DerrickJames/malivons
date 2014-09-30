<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Reports extends Admin_Controller
{

    public function __construct()
    {
        parent::__construct();

        $this->load->model('depreciation_model'); 

        Assets::Add_module_js('assets', 'app.js');
        Assets::Add_module_css('assets', 'style.css');
        Template::set('toolbar_title', 'Assets Depreciations');
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
                foreach($checked as $depreciation_id)
                {
                   $this->_delete($depreciation_id); 
                }
            }
            else
            {
                Template::set_message('Select a record to delete!', 'error');
            }
        }

        log_activity($this->current_user->id, "Accessed the Depreciations Book!", 'depreciations');
    	$depreciations = $this->depreciation_model->find_all();

    	Template::set('depreciations', $depreciations);
        Template::render();
    }

    //--------------------------------------------------------------------------------------

    public function create()
    {
	    	if ( $this->input->post('submit') )
	        {
	            $depreciations = array(
	                'name'                => $this->input->post('name'),
	                'cost_price'          => $this->input->post('cost_price'),
                    'purchase_date'       => $this->input->post('purchase_date'),
	                'vendors_name'        => $this->input->post('vendors_name'),
                    'branch'              => $this->input->post('branch'),
                    'department'          => $this->input->post('department'),
                    'depreciation_rate'   => $this->input->post('depreciation_rate')
	            );

	            if ( $this->asset_model->insert($asset) )
	            { 
                    log_activity($this->current_user->id, "Recorded a new asset : Name -".$asset['name'], 'assets');
	                Template::set_message( $asset['name'] . ' successfully recorded.', 'success' );
	                redirect(SITE_AREA .'/content/assets');
	            }
	        }

	    	Template::set('toolbar_title', 'Create A New Asset');
	    	Template::set_view('content/post_form');
	    	Template::render();
    }

    //--------------------------------------------------------------------

    public function update($id=null)
    {
        if ($this->input->post('submit'))
        {
            $asset = array(
                'name'                => $this->input->post('name'),
                'cost_price'          => $this->input->post('cost_price'),
                'purchase_date'       => $this->input->post('purchase_date'),
                'vendors_name'        => $this->input->post('vendors_name'),
                'branch'              => $this->input->post('branch'),
                'department'          => $this->input->post('department'),
                'depreciation_rate'   => $this->input->post('depreciation_rate')
            );

            if ($this->asset_model->update($id, $asset))
            {
                log_activity($this->current_user->id, "Updated an asset : Name - ".$asset['name'], 'assets');
                Template::set_message( $asset['name'] . ' successfully updated.', 'success' );
                redirect(SITE_AREA .'/content/assets');
            }
        }

        $asset = $this->asset_model->find($id);

        Template::set('asset', $asset);
        Template::set('toolbar_title', 'Update Asset : ' . $asset->name);
        Template::set_view('/content/post_form');
        Template::render();
    }

    //--------------------------------------------------------------------------------------------------------

    /**
     * Destroy an asset or a group of assets
     * 
     * @access private
     *
     * @param int $asset_id
     *
     * @return void
     */
    private function _delete($id)
    {
        $asset = $this->asset_model->find($id)->name;

        if ($this->asset_model->delete($id) )
        {
            log_activity($this->current_user->id, "Deleted an asset : Name - ". $asset, 'assets');

            Template::set_message( $asset . ' successfully deleted.', 'success' );
            redirect(SITE_AREA .'/content/assets');
        }
        else
        {
            Template::set_message($asset . ' not deleted!'. $this->asset_model->error, 'error');
        }
    }

    //--------------------------------------------------------------------------------------------

}// end Reports controller
// end reports.php
<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Content extends Admin_Controller
{

    public function __construct()
    {
        parent::__construct();

        $this->load->model('asset_model'); 

        Assets::Add_module_js('assets', 'app.js');
        Assets::Add_module_css('assets', 'style.css');
        Template::set('toolbar_title', 'Available Assets');
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
                foreach($checked as $asset_id)
                {
                   $this->_delete($asset_id); 
                }
            }
            else
            {
                Template::set_message('Select an asset to delete!', 'error');
            }
        }

        log_activity($this->current_user->id, "Accessed the Assets Book!", 'assets');
    	$assets = $this->asset_model->find_all();
    	Template::set('assets', $assets);
        
        Template::render();
    }

    //--------------------------------------------------------------------------------------

    public function create()
    {
    	// if (has_permission('Bonfire.Logbook.Add'))
    	// {
	    	if ( $this->input->post('submit') )
	        {
	            $asset = array(
	                'name'                => $this->input->post('name'),
	                'cost_price'          => $this->input->post('cost_price'),
                    'purchase_date'       => $this->input->post('purchase_date'),
	                'vendors_name'        => $this->input->post('vendors_name'),
                    'branch'              => $this->input->post('branch'),
                    'department'          => $this->input->post('department'),
                    'depreciation_rate'   => $this->input->post('depreciation_rate'),
                    'depreciation_time'   => $this->input->post('depreciation_time')
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
    	// }else{
            // log_activity($this->current_user->id, "Attempt to access a restricted area!", 'logbook');
    		// Template::set_message('Access Restricted!', 'error');
    		// redirect(SITE_AREA .'/content/logbook');
    	// }
   		
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
                'depreciation_rate'   => $this->input->post('depreciation_rate'),
                'depreciation_time'   => $this->input->post('depreciation_time')
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
    public function _delete($id)
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

}// end Content controller
// end content.php
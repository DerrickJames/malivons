<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Reports extends Admin_Controller
{

    public function __construct()
    {
        parent::__construct();

        $this->load->model('asset_model');
        $this->load->model('depreciations/depreciation_model'); 

        Assets::Add_module_js('assets', 'app.js');
        Assets::Add_module_css('assets', 'style.css');
        Template::set('toolbar_title', 'Available Assets');
        Template::set_block('sub_nav', 'reports/sub_nav');
    }

    //--------------------------------------------------------------------

    public function index()
    {
        

        log_activity($this->current_user->id, "Accessed the assets reports book!", 'assets');
    	$assets = $this->asset_model->find_all();
    	Template::set('assets', $assets);
        
        Template::render();
    }

    //--------------------------------------------------------------------------------------

    public function show($id)
    {
        $asset = $this->asset_model->find($id);
        
        $depreciations = $this->depreciation_model->find_all_by('asset_id', $id);

        if ($this->input->post('depreciation'))
        {
            if ($this->asset_model->reducing_method($id))
            {
                log_activity($this->current_user->id, "Depreciation on ". $asset->name ." calculated.", 'assets');
                Template::set_message( "Depreciation on ".$asset->name . ' successfully calculated.', 'success' );
                
                redirect(SITE_AREA .'/reports/assets/show/' . $id);
            }
            else
            {
                log_activity($this->current_user->id, "Depreciation on ". $asset->name ." has reached maximum.", 'assets');
                Template::set_message( "Depreciation on ".$asset->name . ' has reached maximum.', 'error' );
                
                redirect(SITE_AREA .'/reports/assets/show/' . $id);
            }
        }


        Template::set('depreciations', $depreciations);
        Template::set('asset', $asset);
        Template::set('toolbar_title', 'Asset Position');
        Template::render();
    }

    public function depreciations()
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

    	$depreciations = $this->asset_model->select(
                                            'depreciations.id, name, cost_price, purchase_date, branch, 
                                            department, depreciation_rate, depreciation_time, 
                                            depreciation_amount, net_book_value, depreciations.created_on')
                                           ->join('depreciations', 'assets.id = depreciations.asset_id')
                                           ->find_all();

        Template::set('depreciations', $depreciations);
        Template::set('toolbar_title', 'Assets Depreciations');
        Template::render();
    }

    //--------------------------------------------------------------------

    public function update_depreciation()
    {
        $id     = $this->input->post('asset_id');
        $asset  = $this->asset_model->find($id);

        if ($this->asset_model->reducing_method($id))
        {
            log_activity($this->current_user->id, "Depreciation on ". $asset->name ." calculated.", 'assets');
            Template::set_message( "Depreciation on ".$asset->name . ' successfully calculated.', 'success' );
            
            redirect(SITE_AREA .'/reports/assets/show/' . $id);
        }

        
    }

    //--------------------------------------------------------------------------------------------------------

    /**
     * Destroy a depreciation record
     * 
     * @access private
     *
     * @param int $depreciation_id
     *
     * @return void
     */
    public function _delete($id)
    {
        $depreciation = $this->depreciation_model->find($id)->id;

        if ($this->depreciation_model->delete($id) )
        {
            log_activity($this->current_user->id, "Deleted a depreciation record : ID - ". $depreciation, 'assets');

            Template::set_message( 'Record successfully deleted.', 'success' );
            redirect(SITE_AREA .'/reports/assets/depreciations');
        }
        else
        {
            Template::set_message('Record not deleted!'. $this->asset_model->error, 'error');
        }
    }

    //--------------------------------------------------------------------------------------------

}// end Content controller
// end content.php
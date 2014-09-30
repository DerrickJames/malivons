<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * A command line script to perform scheduled tasks to calculate 
 * assets depreciations
 *
 * Asset Depreciation cron job
 * 
 */
class Depreciations extends CI_Controller
{
	public function __construct() 
	{
		parent::__construct();

		$this->load->library('input');
		$this->load->model('depreciations_model');	
	}

	public function index()
	{
		if ( ! $this->input->is_cli_request() )
		{
			echo "This script can only be accessed via the command line interface" . PHP_EOL;

			return;
		}

		$this->depreciations_model->reducingMethod();

	}
}
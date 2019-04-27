<?php

// If accessed directly, Amen.
defined( 'BASEPATH' ) or exit( 'God bless you!' );

/**
 * Preregistration base class.
 * 
 * @extends CI_Controller
 */
class Preregistration extends CI_Controller {

	/**
	 * Initialise class and set its properties.
	 * 
	 * @access public
	 */
	public function __construct() {
		
		parent::__construct();

		$this->load->library( array( 'session' ) );
		$this->load->helper( array( 'url', 'user' ) );
		$this->load->model( 'back/preregistration_model' );

		// Force login.
		force_login( 'admin' );
	}

	/**
	 * Preregistration import form.
	 *
	 * Basic form to import pre registered attendees.
	 *
	 * @access public
	 *
	 * @return mixed
	 */
	public function index() {

		// Load form helper.
		$this->load->helper( 'form' );

		// Render html.
		$this->load->view( 'back/common/header' );
		$this->load->view( 'back/preregistration' );
		$this->load->view( 'back/common/footer' );
	}

	/**
	 * Format and insert registration data.
	 *
	 * Send registration data to registration model in
	 * valid format.
	 *
	 * @access private
	 *
	 * @return mixed
	 */
	public function import() {

		// Do not use.
		die('Sorry. Not in use.');

		$this->load->library( 'jjexcel' );
		$config['upload_path'] = FCPATH . 'uploads/';
		$config['allowed_types'] = 'xls|xlsx|csv';
		$config['max_size'] = '5000';
		$this->load->library( 'upload', $config );
		$this->upload->do_upload( 'attendees' );
		$upload_data = $this->upload->data();
		$file_name = $upload_data['file_name'];

		$obj_reader = PHPExcel_IOFactory::createReader( 'Excel2007' );

		// Set to read only.
		$obj_reader->setReadDataOnly( true );
		// Load excel file.
		$obj_php_excel = $obj_reader->load(FCPATH . 'uploads/' . $file_name );
		$total_rows = $obj_php_excel->setActiveSheetIndex(0)->getHighestRow();
		//echo $total_rows; exit;
		$obj_worksheet = $obj_php_excel->setActiveSheetIndex(0);
		for( $i = 1201; $i <= $total_rows; $i++ ) {
			$name = $obj_worksheet->getCellByColumnAndRow(1, $i )->getValue();
			if ( empty( trim( $name ) ) ) {
				continue;
			}
			$church = $obj_worksheet->getCellByColumnAndRow(3, $i )->getValue();
			$age = $obj_worksheet->getCellByColumnAndRow(4, $i )->getValue();
			$gender = $obj_worksheet->getCellByColumnAndRow(5, $i )->getValue();
			$gender = strtoupper( $gender );
			$user_data[] = array(
				'name' => ucwords( trim( $name ) ),
				'church' => empty( $church ) ? null : (int) $church,
				'age' => empty( $age ) ? null : (int) $age,
				'gender' => $gender === 'MALE' ? 'M' : ( $gender === 'FEMALE' ? 'F' : null ),
			);
		}

		if ( ! empty( $user_data ) ) {
			$this->preregistration_model->insert_registrants( $user_data );
		}

	}
}

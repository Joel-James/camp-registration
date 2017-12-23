<?php

// If accessed directly, Amen.
defined( 'BASEPATH' ) or exit( 'God bless you!' );

/**
 * Preregistration model class.
 * 
 * @extends CI_Model
 */
class Preregistration_model extends CI_Model {

	/**
	 * Initialise class and set its properties.
	 *
	 * @access public
	 */
	public function __construct() {
		
		parent::__construct();

		$this->load->database();
	}

	/**
	 * Insert pre registration data.
	 *
	 * @access public
	 *
	 * @param array $data Attendees data.
	 *
	 * @return bool true on success, false on failure
	 */
	public function insert_registrants( $data ) {

		return $this->db->insert_batch( 'preregistration', $data );
	}
}

<?php

// If accessed directly, Amen.
defined( 'BASEPATH' ) or exit( 'God bless you!' );

/**
 * Registration model class.
 * 
 * @extends CI_Model
 */
class Registration_model extends CI_Model {

	/**
	 * Initialise class and set its properties.
	 *
	 * @access public
	 *
	 * @return void
	 */
	public function __construct() {
		
		parent::__construct();

		$this->load->database();
	}
	
	/**
	 * Insert registration data.
	 * 
	 * @access public
	 *
	 * @param array $data Registration data.
	 *
	 * @return bool true on success, false on failure
	 */
	public function register( $data ) {
		
		$this->db->insert( 'registration', $data );

		return $this->db->insert_id();
	}

	/**
	 * Insert dates data.
	 *
	 * @access public
	 *
	 * @param array $data Dates data.
	 *
	 * @return bool true on success, false on failure
	 */
	public function insert_dates( $data ) {

		$this->db->insert( 'dates', $data );

		return $this->db->insert_id();
	}

	/**
	 * Insert timings data.
	 *
	 * @access public
	 *
	 * @param array $data Timing data.
	 *
	 * @return bool true on success, false on failure
	 */
	public function insert_timings( $data ) {

		return $this->db->insert_batch( 'timing', $data );
	}

	/**
	 * Get list of churches.
	 *
	 * Filter churches by district, state or country.
	 *
	 * @access public
	 *
	 * @param int $district District ID.
	 * @param int $state State ID.
	 * @param int $country Country ID.
	 *
	 * @return array
	 */
	public function get_churches( $district = 0, $state = 0, $country = 0 ) {

		$this->db->from( 'churches' );

		// Filter by district.
		if ( ! empty( $district ) ) {
			$this->db->where( 'district', $district );
		}

		// Filter by state.
		if ( ! empty( $state ) ) {
			$this->db->where( 'state', $state );
		}

		// Filter by country.
		if ( ! empty( $country ) ) {
			$this->db->where( 'country', $country );
		}

		return $this->db->get()->result();

	}

	/**
	 * Get list of users registered.
	 *
	 * Filter by church if required.
	 *
	 * @access public
	 *
	 * @param string $name Name of person.
	 * @param int $church Church ID.
	 *
	 * @return array
	 */
	public function get_names( $name = '', $church = 0 ) {

		$this->db->from( 'registration' );

		// Filter by name.
		if ( ! empty( $name ) ) {
			$this->db->like( 'name', trim( $name ) );
		}

		// Filter by church.
		if ( ! empty( $church ) ) {
			$this->db->where( 'church', $church );
		}

		return $this->db->get()->result();

	}

	/**
	 * Delete and attendee in emergency.
	 *
	 * @param int $id Attendee ID.
	 *
	 * @access public
	 *
	 * @return bool
	 */
	public function delete_attendee( $id ) {

		$this->db->where( 'id', $id );
		$this->db->delete( 'registration' );

		return $this->db->affected_rows() > 0;
	}
}

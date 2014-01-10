<?php

class Model_vraboteni extends CI_Model{
	
	//funkcijata kako argument ke dobie pole od site informacii za eden vraboten. Potoa vnatre ke pristapam do bazata i ke go vnesam
	//vraboteniot.
	public function dodadi_vraboten($vraboten){
		
		if($this->db->insert('vraboten', $vraboten)){
			return true;
		}
		else return false;
		
	}
	
	public function proveri_username($username){
		
		$query = $this->db->get_where('vraboten', array('username' => $username));

		return $query;
	}
	
	
}

?>
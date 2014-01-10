<?php

class Controller_klienti extends CI_Controller{
		
	public function index(){
		
		$denovi = array();
		$meseci = array();
		$godini = array();
		$pol = array();
		
		$denovi[0] = "-";
		for($i=1;$i<=31;$i++){
			array_push($denovi, $i);			
		}
		
		$meseci[0] = "-";
		$meseci[1] = "Јануари";
		$meseci[2] = "Февруари";
		$meseci[3] = "Март";
		$meseci[4] = "Април";
		$meseci[5] = "Мај";
		$meseci[6] = "Јуни";
		$meseci[7] = "Јули";
		$meseci[8] = "Август";
		$meseci[9] = "Септември";
		$meseci[10] = "Октомври";
		$meseci[11] = "Ноември";		
		$meseci[12] = "Декември";
		
		$tekovnaGodina = date('Y');
		$godini[0] = "-";
		for($j=1960;$j<$tekovnaGodina;$j++){
			array_push($godini, $j);
		}
		
		$pol[0] = '-';
		$pol[1] = 'male';
		$pol[2] = 'female';
		
		$data['denovi'] = $denovi;
		$data['meseci'] = $meseci;
		$data['godini'] = $godini;
		$data['pol'] = $pol;
		
		$data['errors'] = "";
		
		$this->load->view('view_dodadi_klient_osnovni', $data);	
	}
	
	public function validate(){
		
	}
}


?>
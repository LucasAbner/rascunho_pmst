<?php 

	
	function email_exists($email)
	{
		$obj = &get_instance();
		$obj->load->model('Admin_model');

		$data2 = $obj->Exame_model->getUserByEmail($email); 
		if($data2 != null){
			return true;
		}
		return false;
	}
		
			


?>
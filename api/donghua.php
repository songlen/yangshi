<?php
/**
 * 获取联动菜单接口
 */
defined('IN_PHPCMS') or exit('No permission resources.'); 
switch ($_GET['action']) {
	case 'getDescription':
		getDescription();
		break;
	
	default:
		# code...
		break;
}

function getDescription (){
	$id = $_GET['id'];
	$video_model = pc_base::load_model('video_model');
	$video = $video_model->get_one(array('id'=>$id), 'description');
	echo json_encode(array('data'=>$video['description']));
}
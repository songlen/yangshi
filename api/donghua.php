<?php
/**
 * 获取联动菜单接口
 */
defined('IN_PHPCMS') or exit('No permission resources.'); 
switch ($_GET['action']) {
	case 'getDescription':
		getDescription();
		break;
	case 'getMoreLists':
		getMoreLists();
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

function getMoreLists (){
	$page = $_GET['page'];
	$video_model = pc_base::load_model('video_model');
	$count = $video_model->count();
	$num = 12;
	$pages = ceil($count/12);
	$data = $video_model->listinfo('', '', $page, $num);

	if($page == '1'){
		die(json_encode(array('data'=>'', 'pages'=>$pages)));
	}
	echo json_encode(array('data'=> $data, 'pages'=>$pages));
}
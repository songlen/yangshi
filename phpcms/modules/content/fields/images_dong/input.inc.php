	function images_dong($field, $value) {
		// 取得别名
		$alia = $_POST[$field.'_alia'];

		//取得图片列表
		$pictures = $_POST[$field.'_url'];
		//取得图片说明
		$pictures_alt = isset($_POST[$field.'_alt']) ? $_POST[$field.'_alt'] : array();
		$array = $temp = array();
		if(!empty($pictures)) {
			foreach($pictures as $key=>$pic) {
				$temp['url'] = $pic;
				$temp['alt'] = str_replace(array('"',"'"),'`',$pictures_alt[$key]);
				$array['alia'] = $alia;
				$array['pic'][$key] = $temp;
			}
		}
		$array = array2string($array);
		return $array;
	}

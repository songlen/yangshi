<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<title><?php if(isset($SEO['title']) && !empty($SEO['title'])) { ?><?php echo $SEO['title'];?><?php } ?><?php echo $SEO['site_title'];?></title>
	<meta name="keywords" content="<?php echo $SEO['keyword'];?>">
	<meta name="description" content="<?php echo $SEO['description'];?>">
	<link rel="stylesheet" type="text/css" href="<?php echo APP_PATH;?>statics/default/css/style.css">
	<link rel="stylesheet" type="text/css" href="<?php echo APP_PATH;?>statics/default/css/flexslider.css">
	<link rel="stylesheet" type="text/css" href="<?php echo APP_PATH;?>statics/default/css/imageflow.css">
	<script type="text/javascript" src="<?php echo APP_PATH;?>statics/default/js/jquery-3.2.1.min.js"></script>
</head>
<body>
	<div id="top">
		<div class="container">
			<div class="index_search fr"><input type="text" name="index_search"></div>
			<div class="language fr"><span><a href="<?php echo siteurl(1);?>">中文</a></span><span>|</span><span><a href="<?php echo siteurl(2);?>">English</a></span></div>
		</div>
	</div>
	<div class="container nav">
		<div class="logo fl"><a href="<?php echo siteurl($siteid);?>/"><img src="<?php echo APP_PATH;?>statics/default/images/logo.jpg" width="175" height="102"></a></div>
		<div class="menu fr">
			<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=b43f1459ac702900c8d44c91a5e796dd&action=category&catid=0&num=25&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'0','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'25',));}?>
			<ul>
				<li class="first"><a href="<?php echo siteurl($siteid);?>">Home</a></li>
				<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
				<li>
					<a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a>
					<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=02ffaeac39c2981817324dfd5227e18c&action=category&catid=%24r%5B%27catid%27%5D&siteid=%24siteid&return=subcats\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$subcats = $content_tag->category(array('catid'=>$r['catid'],'siteid'=>$siteid,'limit'=>'20',));}?>
					<?php if(!empty($subcats)) { ?>
					<dl>
						<?php $n=1;if(is_array($subcats)) foreach($subcats AS $sub) { ?>
						<dt><a href="<?php echo $sub['url'];?>"><?php echo $sub['catname'];?></a></dt>
						<?php $n++;}unset($n); ?>
					</dl>
					<?php } ?>
					<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
				</li>
				<?php $n++;}unset($n); ?>
			</ul>
			<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
		</div>
	</div>
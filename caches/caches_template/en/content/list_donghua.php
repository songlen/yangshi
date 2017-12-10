<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template('content','header'); ?>
	<div class="categorybanner"><img src="<?php echo APP_PATH;?>statics/default/images/dong_02.jpg"></div>
	<div class="container">
		<!-- <div class="dong_title"></div> -->
		<div class="title_zh">Animation Star</div>
		<div class="title_en">Animation Star</div>
		<ul class="dong_list">
			<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=218ca7254d49a6884a34a56c9bfa0ee3&action=lists&catid=%24catid&num=12\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>$catid,'limit'=>'12',));}?>
			<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
			<li><a href="<?php echo $r['url'];?>"><img src="<?php echo thumb($r[thumb]);?>" alt="" width="216" height="216"></a>
				<div class="title"><a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a></div>
				<div class="des"><?php echo $r['list_des'];?></div>
			</li>
			<?php $n++;}unset($n); ?>
			<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
		</ul>
		<div class="more_dong"><button type="button">加载更多</button></div>
	</div>
<?php include template('content','footer'); ?>
</body>
</html>
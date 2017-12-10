<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template('content', 'header'); ?>
	<div class="categorybanner"><img src="<?php echo $CATEGORYS[$catid]['image'];?>">
		<div class="container" style="position: relative;">
			<div class="banner_wenzibg"></div>
			<div class="banner_wenzibox">
				<div class="renli_banner_title">人才招聘</div>
				<div class="renli_banner_des"><?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"block\" data=\"op=block&tag_md5=2aa11bcf2a248b50eec33635f6b05d97&pos=rencaizhaopin\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">添加碎片</a>";}$block_tag = pc_base::load_app_class('block_tag', 'block');echo $block_tag->pc_tag(array('pos'=>'rencaizhaopin',));?></div>
			</div>
			
		</div>
	</div>
	<div class="container contact">
		<div class="crumbs">
			<!-- <a href="">人力资源</a> > <a href="">人才储备</a> > 内容 -->
		</div>
		<div class="contactTitle">人才招聘</div>
		<div class="renlibox">
			<div class="renli_item item1">
				<div class="title">人才理念</div>
				<div class="con"><?php echo $CATEGORYS['17']['description'];?></div>
				<div class="href"><a href="<?php echo $CATEGORYS['17']['url'];?>">MORE</a></div>
			</div>
			<div class="renli_margin"></div>
			<div class="renli_item item2">
				<div class="title">人才储备</div>
				<div class="con"><?php echo $CATEGORYS['17']['description'];?></div>

				<div class="href"><a href="<?php echo $CATEGORYS['18']['url'];?>">我要应聘>></a></div>
			</div>
			<div class="renli_margin"></div>
			<div class="renli_item item3">
				<div class="title">人才招聘</div>
				<div class="gang">岗位信息 > </div>
				<div class="zhaolist">
					<ul>
						<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=3c440f122b0077785bfae7a455f7c774&action=lists&catid=16&num=3&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'16','order'=>'listorder ASC','limit'=>'3',));}?>
						<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
						<li><a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a></li>
						<?php $n++;}unset($n); ?>
						<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
					</ul>
				</div>
				<div class="href"><a href="<?php echo $CATEGORYS['16']['url'];?>">MORE</a></div>
			</div>
		</div>
	</div>
<?php include template('content', 'footer'); ?>
</body>
</html>
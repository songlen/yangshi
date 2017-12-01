<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template('content','header'); ?>
	<div class="categorybanner"><?php echo $CATEGORYS[$catid]['image'];?></div>
	<div class="container pageContainer">
		<div class="pageLeft">
			<div class="leftNavTitle">关于我们</div>
			<div class="aboutNav">
				<ul>
					<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=6e15ad6b495cbbb858b8b12efc29a186&action=category&catid=1&num=25&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'1','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'25',));}?>
					<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
					<li <?php if($r[catid] == $catid) { ?> class="hover"<?php } ?>><a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></li>
					<?php $n++;}unset($n); ?>
					<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
				</ul>
				
			</div>
		</div>
		<div class="pageRight">
			<div class="crumbs">
				<?php echo catpos($catid);?>
			</div>
			<div class="currentTitle"><?php echo $CATEGORYS[$catid]['catname'];?></div>
			<div class="licheng">
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=aadf84d1679058b923b1c2df730ccea2&action=lists&catid=%24catid&order=id+DESC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>$catid,'order'=>'id DESC','limit'=>'20',));}?>
				<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
				<div class="lichengList">
					<div class="year"><?php echo $r['title'];?></div>
					<div class="desc"><?php echo $r['description'];?></div>
				</div>
				<?php $n++;}unset($n); ?>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</div>
		</div>
	</div>
<?php include template('content','footer'); ?>
</body>
</html>
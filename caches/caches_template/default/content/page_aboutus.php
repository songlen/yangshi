<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content", "header"); ?>
	<div class="categorybanner"><img src="<?php echo $CATEGORYS[$catid]['image'];?>"></div>
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
			<div class="pageContent">
				<?php echo $content;?>
			</div>
		</div>
	</div>
<?php include template("content", "footer"); ?>
<script type="text/javascript">
	if(GetQueryString('catid')=='1'){
		var url = window.location.href.replace('catid=1', 'catid=2');
		window.location.href=url
	}
	function GetQueryString(name)
	{
	     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
	     var r = window.location.search.substr(1).match(reg);
	     if(r!=null)return  unescape(r[2]); return null;
	}
</script>
</body>
</html>
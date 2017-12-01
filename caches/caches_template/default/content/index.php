<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>
	<div class="jq22-container">

		<div class="flexslider">
			<ul class="slides">
			<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=390fbb994a2ecd8cc0f863723a8ef451&sql=SELECT+setting+FROM+phpcms_poster+WHERE+spaceid+%3D+11+AND+disabled%3D0+ORDER+BY+listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("SELECT setting FROM phpcms_poster WHERE spaceid = 11 AND disabled=0 ORDER BY listorder ASC LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>
				<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
				<?php 
					$r = json_decode($r['setting'], true);
					$r = $r[1];
				?>
				<li><a href="<?php echo $r['linkurl'];?>"><img src="<?php echo $r['imageurl'];?>"></a></li>
				<?php $n++;}unset($n); ?>
			<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</ul>
		</div>
		
	</div>
	<div class="index_news_title"></div>
	<div class="container index_news_box">
		<div class="index_video fl"><?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"block\" data=\"op=block&tag_md5=55d58bcbe46afafd63345c6b9dc2a335&pos=index_video\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">添加碎片</a>";}$block_tag = pc_base::load_app_class('block_tag', 'block');echo $block_tag->pc_tag(array('pos'=>'index_video',));?><?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?></div>
		<div class="index_news fr">
			<div class="overflow">
				<div class="more_news"><a href="<?php echo $CATEGORYS['10']['url'];?>">MORE</a></div>
				<ul class="index_news_tab">
					<li class="hover">最新</li>
					<li>公司动态</li>
					<li>行业资讯</li>
				</ul>
				
			</div>
			<div class="index_news_tab_box" style="display: block;">
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=5b02b0f2577b37ed2f7ebc19a5123229&sql=SELECT+url%2C+inputtime%2C+title%2C+description+from+v9_news+where+status%3D99+order+by+id+DESC&num=3\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("SELECT url, inputtime, title, description from v9_news where status=99 order by id DESC LIMIT 3");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>

				<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
				<div class="news_content overflow">
					<div class="date fl">
						<p class="day"><?php echo date('d', $r[inputtime]);?></p>
						<p class="year"><?php echo date('Y.m', $r[inputtime]);?></p>
					</div>
					<div class="news_info fl">
						<p class="title"><a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a></p>
						<p class="brief"><?php echo $r['description'];?></p>
					</div>
				</div>
				<?php $n++;}unset($n); ?>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</div>
			<div class="index_news_tab_box">
				
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=2de64f9c643eeba15a2829903c5c0494&action=lists&catid=22&order=id+DESC&num=3\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'22','order'=>'id DESC','limit'=>'3',));}?>
				<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
				<div class="news_content overflow">
					<div class="date fl">
						<p class="day"><?php echo date('d', $r[inputtime]);?></p>
						<p class="year"><?php echo date('Y.m', $r[inputtime]);?></p>
					</div>
					<div class="news_info fl">
						<p class="title"><a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a></p>
						<p class="brief"><?php echo $r['description'];?></p>
					</div>
				</div>
				<?php $n++;}unset($n); ?>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</div>
			<div class="index_news_tab_box">
				
				
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=7baf742c55433bb48a0495be3e6ca333&action=lists&catid=26&order=id+DESC&num=3\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'26','order'=>'id DESC','limit'=>'3',));}?>
				<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
				<div class="news_content overflow">
					<div class="date fl">
						<p class="day"><?php echo date('d', $r[inputtime]);?></p>
						<p class="year"><?php echo date('Y.m', $r[inputtime]);?></p>
					</div>
					<div class="news_info fl">
						<p class="title"><a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a></p>
						<p class="brief"><?php echo $r['description'];?></p>
					</div>
				</div>
				<?php $n++;}unset($n); ?>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</div>
		</div>
	</div>
	<div class="index_donghua_title"></div>
	<div class="donghuabg">
		<div id="LoopDiv" style="margin-top: 80px;">
			<input id="S_Num" type="hidden" value="8" />
			<div id="starsIF" class="imageflow">
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=27e9d8023b304517ffe5dd60447c684b&sql=SELECT+setting+FROM+phpcms_poster+WHERE+spaceid+%3D+12+AND+disabled%3D0+ORDER+BY+listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("SELECT setting FROM phpcms_poster WHERE spaceid = 12 AND disabled=0 ORDER BY listorder ASC LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>
					<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
					<?php 
						$r = json_decode($r['setting'], true);
						$r = $r[1];
					?>
					<img src="<?php echo $r['imageurl'];?>" longdesc="<?php echo $r['linkurl'];?>" width="280" height="300" />
					<?php $n++;}unset($n); ?>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>	
			</div>
		</div>

		<div class="index_yansheng_title"></div>
		<div class="container">
			<div class="index_yansheng_box">
				<ul>
					<li class="yanshi_1"><a href=""><img src="<?php echo APP_PATH;?>statics/default/images/index_26.jpg" alt=""></a></li>
					<li class="yanshi_2"><a href=""><img src="<?php echo APP_PATH;?>statics/default/images/index_27.jpg" alt=""></a></li>
					<li class="yanshi_3"><a href=""><img src="<?php echo APP_PATH;?>statics/default/images/index_28.jpg" alt=""></a></li>
					<li class="yanshi_4"></li>
					<li class="yanshi_5"></li>
					<li class="yanshi_6"><a href=""><img src="<?php echo APP_PATH;?>statics/default/images/index_33.jpg" alt=""></a></li>
					<li class="yanshi_7"><a href=""><img src="<?php echo APP_PATH;?>statics/default/images/index_34.jpg" alt=""></a></li>
					<li class="yanshi_8"><a href=""><img src="<?php echo APP_PATH;?>statics/default/images/index_30.jpg" alt=""></a></li>
				</ul>
			</div>
			<div class="index_yansheng_more"><a href="">MORE</a></div>
		</div>
		<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=de686d646fac88c5f405f6310649b5bd&sql=SELECT+setting+FROM+phpcms_poster+WHERE+spaceid+%3D+13+AND+disabled%3D0+ORDER+BY+listorder+ASC&num=1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("SELECT setting FROM phpcms_poster WHERE spaceid = 13 AND disabled=0 ORDER BY listorder ASC LIMIT 1");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$data = $a;unset($a);?>
			<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
			<?php 
				$r = json_decode($r['setting'], true);
				$r = $r[1];
			?>
			<img class="bgimg" src="<?php echo $r['imageurl'];?>" />
			<?php $n++;}unset($n); ?>
		<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>						
	</div>
<?php include template("content","footer"); ?>

	
	<script type="text/javascript">
		// 导航下拉
		$(function(){
			$('.menu li').hover(function(){
				$(this).find('dl').show();
			}, function(){
				$(this).find('dl').hide();
			})
		})


		// 首页新闻切换
		$(function(){
			$('.index_news_tab li').mouseover(function(){
				$(this).addClass('hover').siblings().removeClass('hover');
				$('.index_news_tab_box').hide();
				$('.index_news_tab_box').eq($(this).index()).show();
			})
		})
	</script>

	<!-- 首页轮播图 -->
	<script type="text/javascript" src="<?php echo APP_PATH;?>statics/default/js/jquery.flexslider-min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$('.flexslider').flexslider({
				directionNav: true,
				pauseOnAction: false,
				slideshowSpeed: 4000,
				animationDuration: 1000,
			});
		});
	</script>

	<!-- 3D轮播图 -->

    <script type="text/javascript" src="<?php echo APP_PATH;?>statics/default/js/imageflow.js"></script>
</body>
</html>
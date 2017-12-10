<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template('content', 'header'); ?>
	<div class="categorybanner"><img src="<?php echo $CATEGORYS[$catid]['image'];?>"></div>
	<div class="container news_container">
		<div class="title_zh">台、总公司要闻</div>
		<div class="title_en">NEWS DYNAMIC</div>
	</div>
	<div class="news_bg">
		<div class="container news_container">
			<div class="news_one">
				<ul>
					<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=d94de71b1c0dfc5ded7510ee577dd06b&action=lists&catid=21&order=id+DESC&num=3\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'21','order'=>'id DESC','limit'=>'3',));}?>
					<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
					<li>
						<div class="date fl">
							<p class="day"><?php echo date('d', $r[inputtime]);?></p>
							<p class="year"><?php echo date('Y.m', $r[inputtime]);?></p>
						</div>
						<div class="news_info fl">
							<p class="title"><a href=""><?php echo $r['title'];?></a></p>
							<p class="brief"><?php echo $r['description'];?></p>
						</div>
					</li>
					<?php $n++;}unset($n); ?>
					<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
				</ul>
				<div class="more"><a href="<?php echo $CATEGORYS['21']['url'];?>">MORE</a></div>
			</div>
		
		</div>	
	</div>
	<div class="container news_container">
		<div class="title_zh">公司新闻</div>
		<div class="title_en">THE NEWS</div>
		<div class="company_news">
			<ul>
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=2de64f9c643eeba15a2829903c5c0494&action=lists&catid=22&order=id+DESC&num=3\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'22','order'=>'id DESC','limit'=>'3',));}?>
				<?php $data = array_values($data);?>
				<?php if(isset($data[0])) { ?>
				<li class="first">
					<img src="<?php echo $data['0']['thumb'];?>" width="300" height="240" alt="">
					<div class="title"><a href="<?php echo $data['0']['url'];?>"><?php echo $data['0']['title'];?></a></div>
					<div class="info"><?php echo $data['0']['description'];?></div>
				</li>
				<?php } ?>
				<li class="second">
					<img src="<?php echo $data['1']['thumb'];?>" width="300" height="240" alt="">
					<div class="title"><a href="<?php echo $data['1']['url'];?>"><?php echo $data['1']['title'];?></a></div>
					<div class="info"><?php echo $data['1']['description'];?></div>
				</li>
				<li class="third">
					<img src="<?php echo $data['2']['thumb'];?>" width="598" height="300" alt="">
					<div class="title"><a href="<?php echo $data['2']['url'];?>"><?php echo $data['3']['title'];?></a></div>
					<div class="info"><?php echo $data['2']['description'];?></div>
				</li>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</ul>
		</div>
		<div class="more"><a href="<?php echo $CATEGORYS['22']['url'];?>">MORE</a></div>
		<div class="title_zh">公司动态</div>
		<div class="title_en">Company News</div>
		<div class="company_dongt">
			<ul>
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=016461905375e1f73d65bd17b39ebf1e&action=lists&catid=56&order=id+DESC&num=3\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'56','order'=>'id DESC','limit'=>'3',));}?>
				<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
				<li>
					<a href="<?php echo $r['url'];?>"><img src="<?php echo $r['thumb'];?>" width="380" height="247" alt=""></a>
					<div class="title"><?php echo $r['title'];?></div>
					<div class="info"><?php echo $r['description'];?></div>
				</li>
				<?php $n++;}unset($n); ?>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</ul>
		</div>
		<div class="more"><a href="<?php echo $CATEGORYS['56']['url'];?>">MORE</a></div>
		<div class="title_zh">党群工作</div>
		<div class="title_en">Party Work</div>
		<div class="dangqun">
			<ul>
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=0f5e1e6257818dbab027c51607ac9aec&action=lists&catid=23&order=id+DESC&num=3\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'23','order'=>'id DESC','limit'=>'3',));}?>
				<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
				<li><a href="<?php echo $r['url'];?>"><img src="<?php echo $r['thumb'];?>" width="380" height="247" alt=""></a></li>
				<?php $n++;}unset($n); ?>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</ul>
		</div>

		<div class="more"><a href="<?php echo $CATEGORYS['23']['url'];?>">MORE</a></div>
		<div class="title_zh">交流合作</div>
		<div class="title_en">Exchange And Cooperation</div>
		<div class="company_dongt">
			<ul>
				<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=ac31bcc457ba8f86dd60d947d9feea50&action=lists&catid=24&order=id+DESC&num=3\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'24','order'=>'id DESC','limit'=>'3',));}?>
				<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
				<li>
					<a href="<?php echo $r['url'];?>"><img src="<?php echo $r['thumb'];?>" width="380" height="247" alt=""></a>
					<div class="title"><?php echo $r['title'];?></div>
					<div class="info"><?php echo $r['description'];?></div>
				</li>
				<?php $n++;}unset($n); ?>
				<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
			</ul>
		</div>
		<div class="more"><a href="<?php echo $CATEGORYS['24']['url'];?>">MORE</a></div>
		<div class="threeNews">
			<ul>
				<li>
					<div class="tit">动画影视资讯</div>
					<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=7316674d31ba9820fb763afdc13d179f&action=lists&catid=25&order=id+DESC&num=1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'25','order'=>'id DESC','limit'=>'1',));}?>
					<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
					<div class="libg">
						<a href="<?php echo $r['url'];?>"><img src="<?php echo $r['thumb'];?>" width="380" height="247" alt=""></a>
						<div class="title"><?php echo $r['title'];?></div>
						<div class="info"><?php echo $r['description'];?></div>
						
					</div>
					<?php $n++;}unset($n); ?>
					<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

					<div class="more"><a href="<?php echo $CATEGORYS['25']['url'];?>">MORE</a></div> 
				</li>
				<li>
					<div class="tit">行业动态</div>
					<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=720f0bb168b9fb67cd51a8aecd8dbaec&action=lists&catid=26&order=id+DESC&num=1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'26','order'=>'id DESC','limit'=>'1',));}?>
					<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
					<div class="libg">
						<a href="<?php echo $r['url'];?>"><img src="<?php echo $r['thumb'];?>" width="380" height="247" alt=""></a>
						<div class="title"><?php echo $r['title'];?></div>
						<div class="info"><?php echo $r['description'];?></div>
						
					</div>
					<?php $n++;}unset($n); ?>
					<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

					<div class="more"><a href="<?php echo $CATEGORYS['26']['url'];?>">MORE</a></div>
				</li>
				<li>
					<div class="tit">其他活动</div>
					<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=65f51a4af2bc9574389ac91cecff5787&action=lists&catid=27&order=id+DESC&num=1\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'27','order'=>'id DESC','limit'=>'1',));}?>
					<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
					<div class="libg">
						<a href="<?php echo $r['url'];?>"><img src="<?php echo $r['thumb'];?>" width="380" height="247" alt=""></a>
						<div class="title"><?php echo $r['title'];?></div>
						<div class="info"><?php echo $r['description'];?></div>
						
					</div>
					<?php $n++;}unset($n); ?>
					<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
					<div class="more"><a href="<?php echo $CATEGORYS['27']['url'];?>">MORE</a></div>
				</li>
			</ul>
		</div>
	</div>
<?php include template('content', 'footer'); ?>
</body>
</html>
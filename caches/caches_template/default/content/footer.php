<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?>
	<div class="footer">
		<div class="container footer_content">
			<div class="foot_logo"><img src="<?php echo APP_PATH;?>statics/default/images/foot_logo.jpg" alt=""></div>
			<div class="saoma">
				<ul>
					<li><img src="<?php echo APP_PATH;?>statics/default/images/foot_03.jpg" alt=""><p>官方微信</p></li>
					<li><img src="<?php echo APP_PATH;?>statics/default/images/foot_03.jpg" alt=""><p>官方微博</p></li>
				</ul>
			</div>
			<div class="foot_fenxiang">
				<p class="fen_wenzi">分享到：</p>
				<ul>
					<li class="share-qq"><img src="<?php echo APP_PATH;?>statics/default/images/foot_08.jpg" alt=""><p>QQ</p></li>
					<li><img src="<?php echo APP_PATH;?>statics/default/images/foot_10.jpg" alt=""><p>微信</p></li>
					<li class="share_weibo"><img src="<?php echo APP_PATH;?>statics/default/images/foot_12.jpg" alt=""><p>微博</p></li>
				</ul>
			</div>
		</div>
		<div class="web_brief">
			<p><span class="banquan">版权所有</span>：<?php echo $SEO['copyright'];?> <span class="beian">备案号：<?php echo $SEO['beian'];?></span></p>
		</div>
	</div>
<script type="text/javascript">
	$(function(){
		var url, title, summary;

		url = location.href;
		title = $('title').html();
		

		// qq 分享
		summary = '央视动画';
		$('.share-qq').click(function(){
			share_qq(url, title, summary);
		})
		// 微信分享

		// 微博分享
		$('.share_weibo').click(function(){
			share_weibo(url, title);
		})
	})

	function share_qq(url, title, summary){
		var p = {
			url:url, /*获取URL，可加上来自分享到QQ标识，方便统计*/
			desc:'', /*分享理由(风格应模拟用户对话),支持多分享语随机展现（使用|分隔）*/
			title:title, /*分享标题(可选)*/
			summary:summary, /*分享摘要(可选)*/
			pics:'', /*分享图片(可选)*/
			flash: '', /*视频地址(可选)*/
			site:'', /*分享来源(可选) 如：QQ分享*/
			style:'201',
		};
		
		var s = [];
		for(var i in p){
			s.push(i + '=' + encodeURIComponent(p[i]||''));
		}

		var shareUrl = 'http://connect.qq.com/widget/shareqq/index.html?'+s.join('&');
		
		window.open(shareUrl);
	}

	function share_weibo(url, title){
		var p = {
			url:url,
			title:title,
			source:'',
			sourceUrl:'',
			content:'utf-8',
		}

		var s = [];
		for(var i in p){
			s.push(i + '=' + encodeURIComponent(p[i]||''));
		}
		var shareUrl = 'http://v.t.sina.com.cn/share/share.php?'+s.join('&');
		window.open(shareUrl);
	}
	

</script>


<script type="text/javascript">
	// 导航下拉
	$(function(){
		$('.menu li').hover(function(){
			$(this).find('dl').show();
		}, function(){
			$(this).find('dl').hide();
		})
	})

</script>

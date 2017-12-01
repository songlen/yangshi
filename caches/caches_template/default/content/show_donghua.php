<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template('content','header'); ?>
	<div class="categorybanner"><img src="<?php echo $banner;?>"></div>
	<div class="container dong_container">
		<div class="param">
			<span class="label">时长：</span><span class="value"><?php echo $time;?></span>
			<span class="label">技术：</span><span class="value"><?php echo $jishu;?></span>
			<span class="label">受众：</span><span class="value"><?php echo $shouzhong;?></span>
		</div>
		<div class="brief">
			<span class="label">简介：</span>
			<span class="content"><?php if(mb_strlen($description) > 10) { ?><?php echo mb_substr($description, 0, 10, 'utf-8');?>...<?php } else { ?><?php echo $description;?><?php } ?></span><span class="shou">收起</span><?php if(mb_strlen($description) > 100) { ?><span class="chakan">查看更多</span><?php } ?>
		</div>
		<?php
			$alia_jingcai = explode('|', $haibao1['alia']);
			$alia_film = explode('|', $film['alia']);
			$alia_stage = explode('|', $stage['alia']);
			$alia_yansheng = explode('|', $yansheng['alia']);
			$alia_activity = explode('|', $activity['alia']);
		?>
		<div class="title"><?php echo $alia_jingcai['0'];?></div>
		<div class="title_en"><?php echo $alia_jingcai['1'];?></div>
		<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"get\" data=\"op=get&tag_md5=c8e9456800ad3ac17f9b6744b5470da5&sql=select+upload_video%2C+shipin2%2C+shipin3+from+v9_video_data+where+id%3D+%24id&return=shipin\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}pc_base::load_sys_class("get_model", "model", 0);$get_db = new get_model();$r = $get_db->sql_query("select upload_video, shipin2, shipin3 from v9_video_data where id= $id LIMIT 20");while(($s = $get_db->fetch_next()) != false) {$a[] = $s;}$shipin = $a;unset($a);?>
		<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
		<input type="hidden" name="video0" value="<?php echo $shipin['0']['upload_video'];?>">
		<input type="hidden" name="video1" value="<?php echo $shipin['0']['shipin2'];?>">
		<input type="hidden" name="video2" value="<?php echo $shipin['0']['shipin3'];?>">
		<div class="imglist">
			<ul id="jingcai">
				<?php $n=1;if(is_array($haibao1['pic'])) foreach($haibao1['pic'] AS $r) { ?>
				<li>
					<img src="<?php echo $r['url'];?>" alt="" width="320" height="320">
					<p><span><?php echo $r['alt'];?></span></p>
				</li>
				<?php $n++;}unset($n); ?>
			</ul>
		</div>
		<div class="title"><?php echo $alia_film['0'];?></div>
		<div class="title_en"><?php echo $alia_film['1'];?></div>
		<div class="imglist layPic">
			<ul id="film">
				<?php $n=1;if(is_array($film['pic'])) foreach($film['pic'] AS $r) { ?>
				<li>
					<img src="<?php echo $r['url'];?>" alt="" width="320" height="320">
					<p><span><?php echo $r['alt'];?></span></p>
				</li>
				<?php $n++;}unset($n); ?>
			</ul>
		</div>
		<div class="title"><?php echo $alia_stage['0'];?></div>
		<div class="title_en"><?php echo $alia_stage['1'];?></div>
		<div class="imglist layPic">
			<ul id="stage">
				<?php $n=1;if(is_array($stage['pic'])) foreach($stage['pic'] AS $r) { ?>
				<li>
					<img src="<?php echo $r['url'];?>" alt="" width="320" height="320">
					<p><span><?php echo $r['alt'];?></span></p>
				</li>
				<?php $n++;}unset($n); ?>
			</ul>
		</div>

		<div class="title"><?php echo $alia_yansheng['0'];?></div>
		<div class="title_en"><?php echo $alia_yansheng['1'];?></div>
		<div class="dong_yansheng_box layPic">
			

			<ul id="yansheng">
				<li class="yanshi_1"><img src="<?php echo $yansheng['pic']['0']['url'];?>" width="420" height="275" alt=""></li>
				<li class="yanshi_2"><img src="<?php echo $yansheng['pic']['1']['url'];?>" width="267" height="376" alt=""></li>
				<li class="yanshi_3"><img src="<?php echo $yansheng['pic']['2']['url'];?>" width="264" height="266" alt=""></li>
				<li class="yanshi_4"></li>
				<li class="yanshi_5"></li>
				<li class="yanshi_6"><img src="<?php echo $yansheng['pic']['3']['url'];?>" width="271" height="266" alt=""></li>
				<li class="yanshi_7"><img src="<?php echo $yansheng['pic']['4']['url'];?>" width="267" height="165" alt=""></li>
				<li class="yanshi_8"><img src="<?php echo $yansheng['pic']['5']['url'];?>" width="413" height="275" alt=""></li>
			</ul>
		</div>
		<div class="title">线上线下活动</div>
		<div class="title_en">activity</div>
		<div class="imglist layPic">
			<ul id="activity">
				<?php $n=1;if(is_array($activity['pic'])) foreach($activity['pic'] AS $r) { ?>
				<li>
					<img src="<?php echo $r['url'];?>" alt="" width="320" height="320">
					<p><span><?php echo $r['alt'];?></span></p>
				</li>
				<?php $n++;}unset($n); ?>
			</ul>
		</div>
	</div>

	<?php include template('content','footer'); ?>
	<link rel="stylesheet" type="text/css" href="<?php echo APP_PATH;?>statics/plugin/layui/css/layui.css">
	<script type="text/javascript" src="<?php echo APP_PATH;?>statics/plugin/layui/layui.js"></script>
	<script type="text/javascript">
		
		$(function(){
			// 弹出图片
			$('.layPic img').click(function(){
  				var thisId = $(this).parents('ul').attr('id');
				layui.use(['layer', 'form'], function(){
  					var layer = layui.layer;
					layer.photos({
					  	photos: "#"+thisId,
					  	anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
					}); 
				});		

			})

			// 精彩视频
			$('#jingcai img').click(function(){
				var index = $('#jingcai img').index($(this));
  				var title = $(this).parent().find('span').html();
				layui.use(['layer', 'form'], function(){
  					var layer = layui.layer;
  					var videoUrl = $("input[name=video"+index+"]").val();

  					var html = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" width="600" height="300">';
  						html += ''
						html += '<param name=movie value="'+videoUrl+'" ref>';
						html += '<param name=quality value=High>';
						html += '<param name="_cx" value="12383">';
						html += '<param name="_cy" value="1588">';
						html += '<param name="FlashVars" value>';
						html += '<param name="Src" ref value="你的flash地址">';
						html += '<param name="WMode" value="Window">';
						html += '<param name="Play" value="-1">';
						html += '<param name="Loop" value="-1">';
						html += '<param name="SAlign" value>';
						html += '<param name="Menu" value="-1">';
						html += '<param name="Base" value>';
						html += '<param name="AllowScriptAccess" value="always">';
						html += '<param name="Scale" value="ShowAll">';
						html += '<param name="DeviceFont" value="0">';
						html += '<param name="EmbedMovie" value="0">';
						html += '<param name="BGColor" value>';
						html += '<param name="SWRemote" value>';
						html += '<param name="MovieData" value>';
						html += '<embed src="'+videoUrl+'" quality=high pluginspage="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash" width="600" height="360"></embed>';
						html += '</object>';

					layer.open({
						type: 1,
						skin: 'layui-layer-rim', //加上边框
						area: ['600px', '400px'], //宽高
						title: title,
						content: html
					});	
				});		
				

			})
		})
	</script>
	<script type="text/javascript">
		$(function(){
			$('.chakan').click(function(){
				var url = window.location.origin+'/api.php?op=donghua&action=getDescription&id=<?php echo $id;?>'
				$.ajax({
					url: url,
					type: 'GET',
					dataType: 'json',
					success: function(data){
						$('.content').html(data.data);
						$('.shou').show();
						$('.chakan').hide();
					}
				})
			})

			// 收起
			$('.shou').click(function(){
				var html= "<?php echo mb_substr($description, 0, 10, 'utf-8');?>"+'...';

				$('.content').html(html);
				$('.chakan').show();
				$(this).hide();
			})
		})
	</script>
</body>
</html>
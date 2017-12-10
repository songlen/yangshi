<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template('content','header'); ?>
	<div class="categorybanner"><img src="<?php echo APP_PATH;?>statics/default/images/dong_02.jpg"></div>
	<div class="container">
		<div class="dong_title"></div>
		<ul class="dong_list" id="dongList">
			<?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=218ca7254d49a6884a34a56c9bfa0ee3&action=lists&catid=%24catid&num=12\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>$catid,'limit'=>'12',));}?>
			<?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
			<li><a href="<?php echo $r['url'];?>"><img src="<?php echo thumb($r[thumb]);?>" alt="" width="216" height="216"></a>
				<div class="title"><a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a></div>
				<div class="des"><?php echo $r['list_des'];?></div>
			</li>
			<?php $n++;}unset($n); ?>
			<?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
		</ul>
		<!-- <div class="more_dong"><button type="button">加载更多</button></div> -->
	</div>
<?php include template('content','footer'); ?>

	<link rel="stylesheet" type="text/css" href="<?php echo APP_PATH;?>statics/plugin/layui/css/layui.css">
	<script type="text/javascript" src="<?php echo APP_PATH;?>statics/plugin/layui/layui.js"></script>
	<script type="text/javascript">
		layui.use('flow', function(){
			var $ = layui.jquery; //不用额外加载jQuery，flow模块本身是有依赖jQuery的，直接用即可。
			var flow = layui.flow;
			flow.load({
				elem: '#dongList', //指定列表容器
				isAuto: false,
				end: '没有更多数据',
				done: function(page, next){ //到达临界点（默认滚动触发），触发下一页
					var lis = [];
					//以jQuery的Ajax请求为例，请求下一页数据（注意：page是从2开始返回）
					$.get(window.location.origin+'/api.php?op=donghua&action=getMoreLists&page='+page, function(res){
						res = JSON.parse(res);
						//假设你的列表返回在data集合中
						layui.each(res.data, function(index, item){
							
							var html = '';
							html += '<li><a href="'+item.url+'"><img src="'+item.thumb+'" alt="" width="216" height="216"></a>';
							html += '<div class="title"><a href="'+item.url+'">'+item.title+'</a></div>';
							html += '<div class="des">'+item.list_des+'</div>';
							html += '</li>';
							lis.push(html);
						}); 
						//执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
						//pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
						next(lis.join(''), page < res.pages);  
					});
				}
			});	
		});
	</script>
</body>
</html>
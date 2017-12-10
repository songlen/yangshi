<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content", "header"); ?>
	<div class="categorybanner"><img src="<?php echo $CATEGORYS[$catid]['image'];?>"></div>
	<div class="container contact">
		<div class="crumbs">
			<a href="<?php echo $CATEGORYS[$catid]['url'];?>">联系我们</a> > 内容
		</div>
		<div class="contactTitle">联系方式</div>
		<div class="pageContent">
			<?php echo $content;?>
		</div>
	</div>
<?php include template("content", "footer"); ?>

</body>
</html>
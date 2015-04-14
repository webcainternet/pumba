<?php 
$class_banner = 'banners';
foreach ($banners as $banner) {
		if($banner['name'] == '22'):
			$class_banner = 'bottom-banners';
		else:
			$class_banner = 'banners';
		endif;
	 } 
	
?>

<?php if ($class_banner == 'bottom-banners') { ?>

<div id="banner<?php echo $module; ?>" class="banner row">
	<?php $i=0;?>
	<?php foreach ($banners as $banner) { $i++; 
		$perLine = 2;
		$total = count($banners);
		$totModule = $total%$perLine;
		if ($i%$perLine==1) {
			$a='first-in-line';
			if ($i !=1){ ?>
				<div class="clear"></div>
			<?php }
		}
		elseif ($i%$perLine==0) {
			$a='last-in-line';
		}
		else {
			$a='';
		}
	?>
	<?php if ($banner['link']) { ?>
	<div class="col-sm-6 <?php echo $a;?>">
		<div>
			<a href="<?php echo $banner['link']; ?>">
				<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" />
			</a>
				<div class="s-desc"><?php echo $banner['description']; ?></div>
			
		</div>		
	</div>
	<?php } else { ?>
	<div class="col-sm-6 <?php echo $a;?>">
		<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" />
		<div class="s-desc"><?php echo $banner['description']; ?></div>
	</div>
	<?php } ?>
	<?php } ?>
</div>

<?php } else { ?>

<div id="banner<?php echo $module; ?>" class="banner row">
	<?php foreach ($banners as $banner) { ?>
	<?php if ($banner['link']) { ?>
	<div class="col-sm-6">
		<div>
			<a href="<?php echo $banner['link']; ?>">
				<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" />
				<div class="s-desc"><?php echo $banner['description']; ?></div>
			</a>
		</div>		
	</div>
	<?php } else { ?>
	<div class="col-sm-6">
		<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" />
		<div class="s-desc"><?php echo $banner['description']; ?></div>
	</div>
	<?php } ?>
	<?php } ?>
</div>

<?php } ?>

<div class="box new-products">
	<div class="box-heading"><?php echo $heading_title; ?></div>
	<div class="box-content">
		<div class="box-product">
			<ul class="row">
	  <?php $i=0; foreach ($products as $product) { $i++ ?>
	  <?php 
		   $perLine = 3;
		   $spanLine = 3;
		   $last_line = "";
						$total = count($products);
						$totModule = $total%$perLine;
						if ($totModule == 0)  { $totModule = $perLine;}
						if ( $i > $total - $totModule) { $last_line = " last_line";}
						if ($i%$perLine==1) {
							$a='first-in-line';
						}
						elseif ($i%$perLine==0) {
							$a='last-in-line';
						}
						else {
							$a='';
						}
					?>
					<li class="<?php echo $a. $last_line ;?> col-sm-<?php echo $spanLine ;?>">
						<div class="padding">
							<!-- Product image -->
							<div class="product_image image2">
								<a href="<?php echo $product['href']; ?>"><?php if ($product['thumb']) { ?><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /><?php } else{ ?><img src="catalog/view/theme/theme477/image/no-image.png" alt="" /><?php } ?>
								<?php if ($product['special']) { ?>
									<span class="sticker"><span>Oferta</span></span>
								<?php } ?></a>
							</div>
							<div class="inner">
						<div class="f-left">
						
							<!-- Product name -->
							<div class="product_name name maxheight-best"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
							
							<!-- Product price -->
							<?php if ($product['price']) { ?>
							<div class="product_price price">
								<?php if (!$product['special']) { ?>
								<span class="text-price"><?php echo $product['price']; ?></span>
								<?php } else { ?>
								<span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span>
								<?php } ?>
							</div>
							<?php } ?>
							
						</div>
						<!-- Product buttons -->
						<div class="product_button">
							<div class="cart">
								<a class="button addToCart" data-id="<?php echo $product['product_id']; ?>"><i class="fa fa-shopping-cart"></i><span><?php echo $button_cart; ?></span></a>
							</div>
								<a title="<?php echo $button_details; ?>" href="<?php echo $product['href']; ?>" class="tooltip-1 button details"><i class="fa fa-info"></i></a>
						</div>
						<div class="product_rating rating">
							<img src="catalog/view/theme/theme477/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
						</div>
					</div>
							<div class="clear"></div>
						</div>
					</li>
				<?php } ?>
			</ul>
		</div>
	</div>
</div>
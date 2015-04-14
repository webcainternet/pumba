
<div class="box specials">
  <div class="box-heading special-heading"><?php echo $heading_title; ?></div>
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
				<script type="text/javascript">
				$(document).ready(function(){
					$("a.colorbox-<?php echo $i?>").colorbox({
					rel: 'colorbox1',
					inline:true,
					html: true,
					width:'58%',
					maxWidth:'780px',
					height:'70%',
					open:false,
					returnFocus:false,
					fixed: true,
					title: false,
					href:'.quick-view-<?php echo $i;?>',
					current:'<?php echo $text_product; ?>'
					});
					 });
				</script>
				<div class="padding">
					<!-- Product image -->
					<div class="product_image image2">
						<a href="<?php echo $product['href']; ?>"><?php if ($product['thumb']) { ?><img id="img_<?php echo $product['product_id']; ?>" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /><?php } else{ ?><img src="catalog/view/theme/theme477/image/no-image.png" alt="" /><?php } ?>
						<?php if ($product['special']) { ?>
							<span class="sticker"><span><?php echo $sale; ?></span></span>
						<?php } ?></a>
					</div>
					<!-- Product quick view -->
					<div style="display:none;">
							<div class="quick-view-<?php echo $i;?> preview">
								<div class="wrapper marg row">
									<?php if ($product['thumb1']) { ?>
									<div class="left col-sm-4">
										<div class="product_image image3"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb1']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
									</div>
									<div class="right col-sm-8"><?php } else { ?><div class="left col-sm-12"><?php } ?>
										<h2><?php echo $product['name']; ?></h2>
										<div class="inf">
											<?php if ($product['author']) {?>
													<span class="product_manufactured manufacture"><?php echo $text_manufacturer; ?> <a href="<?php echo $product['manufacturers'];?>"><?php echo $product['author']; ?></a></span>
												<?php }?>
											<?php if ($product['model']) {?>
												<span class="product_model model"><?php echo $text_model; ?><?php echo $product['model']; ?></span>
											<?php }?>
											<span class="product_stock prod-stock-2"><?php echo $text_availability; ?></span>
												<?php
												if ($product['text_availability'] > 0) { ?>
												<span class="product_stock prod-stock"><?php echo $text_instock; ?></span>
												<?php } else { ?>
													<span class="product_stock prod-stock"><?php echo $text_outstock; ?></span>
												<?php
												}	
												?>
											<?php if ($product['price']) { ?>
												<div class="product_price price">
												<span class="text-price"><?php echo $text_price; ?></span>
											  <?php if (!$product['special']) { ?>
											  <span class="price-new"><?php echo $product['price']; ?></span>
											  <?php } else { ?>
											  <span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span>
											  <?php } ?>
											  
											</div>
											<?php } ?>
										</div>
										<div class="product_button">
											<div class="cart">
											<a data-id="<?php echo $product['product_id']; ?>" class="button addToCart-1"><i class="fa fa-shopping-cart"></i><span><?php echo $button_cart; ?></span></a>
											</div>
											<a title="<?php echo $button_details; ?>" href="<?php echo $product['href']; ?>" class="tooltip-1 button details"><i class="fa fa-info"></i></a><div class="cart-button">
												<div class="wishlist_btn wishlist">
													<a class="tooltip-1 button" title="<?php echo $button_wishlist; ?>" onclick="addToWishList('<?php echo $product['product_id']; ?>');">
														<i class="fa fa-star"></i>
													</a>
												</div>
												<div class="compare_btn compare">
													<a class="tooltip-1 button" title="<?php echo $button_compare; ?>" onclick="addToCompare('<?php echo $product['product_id']; ?>');">
														<i class="fa fa-signal"></i>
													</a>
												</div>
											</div>
											<span class="clear"></span>
										</div>
										<div class="clear"></div>
											<div class="product_rating rating">
												<img src="catalog/view/theme/theme477/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
											</div>
									</div>
								</div>
								<div class="product_description description">
									<?php echo $product['description'];?>
								</div>
							</div>
						</div>
						<a href="<?php echo $product['href']; ?>" class="colorbox-<?php echo $i;?> quick-view-button"><i class=" fa fa-search "></i></a>
						<div class="inner">
							<div class="f-left">
							
								<!-- product name -->
								<div class="product_name name maxheight-feat"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
								
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

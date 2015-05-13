<?php echo $header; ?>
<?php echo $column_left; ?>
		<div class="<?php if ($column_left or $column_right) { ?>col-sm-9<?php } ?> <?php if (!$column_left & !$column_left) { ?>col-sm-12  <?php } ?> <?php if ($column_left & $column_right) { ?>col-sm-6<?php } ?>" id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
	<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	<?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($products) { ?>
  <div class="product-filter">
	<div class="display"><b><?php echo $text_display; ?></b> <?php echo $text_list; ?> <b>/</b> <a onclick="display('grid');"><?php echo $text_grid; ?></a></div>
	   <div class="sort"><?php echo $text_sort; ?>
	  <select onchange="location = this.value;">
		<?php foreach ($sorts as $sorts) { ?>
		<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
		<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
		<?php } else { ?>
		<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
		<?php } ?>
		<?php } ?>
	  </select>
	</div> <div class="limit"><?php echo $text_limit; ?>
	  <select onchange="location = this.value;">
		<?php foreach ($limits as $limits) { ?>
		<?php if ($limits['value'] == $limit) { ?>
		<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
		<?php } else { ?>
		<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
		<?php } ?>
		<?php } ?>
	  </select>
	</div>
  <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
  </div>

  <div class="product-grid">
	<ul class="row">
		<?php $i=0; foreach ($products as $product) { $i++; ?>
		<?php 
			if ($i%3==1) {
				$a='first-in-line';
			}
			elseif ($i%3==0) {
				$a='last-in-line';
			}
			else {
				$a='';
			}
		?>
		<li class="col-sm-3 <?php echo $a?>">
		<div class="padding">
		<div class="image">		
			<a href="<?php echo $product['href']; ?>"><?php if ($product['thumb']) { ?><img id="img_<?php echo $product['product_id']; ?>" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /><?php } else{ ?><img src="catalog/view/theme/theme477/image/no-image.png" alt="" /><?php } ?>
			<?php if ($product['special']) { ?>
				<span class="sticker">
					<span>Oferta</span>
				</span>
			<?php } ?>
			</a>
		  </div>
		  <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
		  <div class="description"><?php echo $product['description']; ?></div>
		  <?php if ($product['price']) { ?>
		<div class="price">
		<?php if ($product['tax']) { ?>
		<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
		<?php } ?>
		<?php if (!$product['special']) { ?>
		<span class="text-price"><?php echo $product['price']; ?></span>
		<?php } else { ?><span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span> 
		<?php } ?>
		</div>
		<?php } ?>		  
		<div class="cart-button">
		<div class="cart">
			<a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button">
				<i class="fa fa-shopping-cart"></i><span><?php echo $button_cart; ?></span>
			</a>
		</div>
			<div class="wishlist"><a class="button tooltip-1" title="<?php echo $button_wishlist; ?>" onclick="addToWishList('<?php echo $product['product_id']; ?>');">
				<i class="fa fa-star"></i>
			</a></div>
			<div class="compare"><a class="button tooltip-1" title="<?php echo $button_compare; ?>" onclick="addToCompare('<?php echo $product['product_id']; ?>');">
				<i class="fa fa-signal"></i>
			</a></div>
			<div class="clear"></div>
		</div>
		<div class="rating">
			<img src="catalog/view/theme/theme477/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
		</div>
		  </div>
		</li>
		<?php } ?>
	 </ul>
  </div>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php }?>
  <?php echo $content_bottom; ?></div>

<?php echo $column_right; ?>

<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid ').attr('class', 'product-list');
		$('.product-list ul').removeClass('row');
		$('.product-list ul li').removeClass('col-sm-3');
		$('.product-list ul li').each(function(index, element) {
			html = '';
					html += '<div class="row">';
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image col-sm-4">' + image + '</div>';
			}
			html += '<div class="left col-sm-8">';
				html += '<div class="name">' + $(element).find('.name').html() + '</div>';
				html += '<div class="description">' + $(element).find('.description').html() + '</div>';
				var price = $(element).find('.price').html();
				if (price != null) {
					html += '<div class="price">' + price  + '</div>';
				}
				
				html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
				html += '<div class="cart-button">';
				html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
				html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
				html += '<div class="clear">' + $(element).find('.clear').html() + '</div>';
				html += '</div>';
				
				var rating = $(element).find('.rating').html();	
				if (rating != null) {			
					html += '<div class="rating">' + rating + '</div>';
				}
				html += '</div>';
				html += '</div>';
						
			$(element).html(html);
		});		
		
		$('.display').html('<b><?php echo $text_display; ?></b> <div id="list_b"><i class="fa fa-list"></i></div> <a id="grid_a" onclick="display(\'grid\');"><i class="fa fa-th"></i></a>');
		
		$.totalStorage('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		$('.product-grid ul').addClass('row');
		$('.product-grid ul li').addClass('col-sm-3');
		$('.product-grid ul li').each(function(index, element) {
			html = '';
					
			html += '<div class="padding">';
			
			var image = $(element).find('.image').html();			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			html += '<div class="left">';
		
			if ($('body').width() > 767) {
				(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
				$(window).load(function(){
				if($(".maxheight-cat").length){
				$(".maxheight-cat").equalHeights()}
				});
			};
			
			html += '<div class="name maxheight-cat">' + $(element).find('.name').html() + '</div>';
			var price = $(element).find('.price').html();			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}			
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';			
			html += '<div class="clear">' + $(element).find('.clear').html() + '</div>';
			
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="cart-button">';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '<div class="clear">' + $(element).find('.clear').html() + '</div>';
			html += '</div>';
			var rating = $(element).find('.rating').html();	
			html += '<div class="rating">' + rating + '</div>';
			
			html += '</div></div>';
			$(element).html(html);
		});	
					
		$('.display').html('<b><?php echo $text_display; ?></b> <a id="list_a" onclick="display(\'list\');"><i class="fa fa-list"></i></a>  <div id="grid_b"><i class="fa fa-th"></i></i></div>');
		
		$.totalStorage('display', 'grid');
	}
	if ($('body').width() > 940) {
	// tooltip demo
		$('.tooltip-toggle').tooltip({
		selector: "a[data-toggle=tooltip]"
		})
		$('.tooltip-1').tooltip({
			placement:'bottom'
		})
		$('.tooltip-2').tooltip({
			placement:'top'
		})
		}
	
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('grid');
}
//--></script>  

<?php echo $footer; ?>
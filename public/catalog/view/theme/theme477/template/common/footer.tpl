<div class="clear"></div>
</div>
</div>
</div>
<div class="clear"></div>
</section>
<!-- Footer -->

	<div class="container" style="margin-bottom: 15px;">
		<div class="fb-like" data-href="https://facebook.com/lojavirtual.digital" data-width="1100" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
	</div>

<footer>

	<div class="container">

	<div class="row">
		<div class="col-sm-3">
			<?php if ($informations) { ?>
				<h3><?php echo $text_information; ?></h3>
				<ul>
					<?php foreach ($informations as $information) { ?>
					<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
					<?php } ?>
				</ul>
			<?php } ?>
		</div>
		<div class="col-sm-3">
				<h3><?php echo $text_service; ?></h3>
				<ul>
					<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
					<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
					<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
				</ul>
		</div>
		<div class="col-sm-3">
				<h3><?php echo $text_extra; ?></h3>
				<ul>
					<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
					<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
					<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
					<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
				</ul>
		</div>
		<div class="col-sm-3">
				<h3><?php echo $text_account; ?></h3>
				<ul>
					<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
					<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
					<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
					<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
				</ul>
		</div>
	</div>
	</div>
	<!-- copyright -->
	<div id="copyright">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">				
					<?php echo $powered; ?><!-- [[%FOOTER_LINK]] -->
				</div>
			</div>
		</div>
	</div>
</footer>
<script type="text/javascript" 	src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/js/livesearch.js"></script>
</div>
</div>
</div>
</body></html>
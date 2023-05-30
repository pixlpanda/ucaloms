<div class="shop dialog dialog-lg fadeIn animated" style="animation-duration: 300ms;">
	<div class="row">
		<div class="col-lg-6">

			<div class="thumb-gallery-wrapper">
				<div class="thumb-gallery-detail owl-carousel owl-theme manual nav-inside nav-style-1 nav-dark mb-3">
					<div>
						<img alt="" class="img-fluid" src="<?php echo base_url('assets/user/') ?>img/products/product-grey-7.jpg" data-zoom-image="<?php echo base_url('assets/user/') ?>img/products/product-grey-7.jpg">
					</div>
					<div>
						<img alt="" class="img-fluid" src="<?php echo base_url('assets/user/') ?>img/products/product-grey-7-2.jpg" data-zoom-image="<?php echo base_url('assets/user/') ?>img/products/product-grey-7-2.jpg">
					</div>
					<div>
						<img alt="" class="img-fluid" src="<?php echo base_url('assets/user/') ?>img/products/product-grey-7-3.jpg" data-zoom-image="<?php echo base_url('assets/user/') ?>img/products/product-grey-7-3.jpg">
					</div>
					<div>
						<img alt="" class="img-fluid" src="<?php echo base_url('assets/user/') ?>img/products/product-grey-8.jpg" data-zoom-image="<?php echo base_url('assets/user/') ?>img/products/product-grey-8.jpg">
					</div>
					<div>
						<img alt="" class="img-fluid" src="<?php echo base_url('assets/user/') ?>img/products/product-grey-6.jpg" data-zoom-image="<?php echo base_url('assets/user/') ?>img/products/product-grey-6.jpg">
					</div>
					<div>
						<img alt="" class="img-fluid" src="<?php echo base_url('assets/user/') ?>img/products/product-grey-5.jpg" data-zoom-image="<?php echo base_url('assets/user/') ?>img/products/product-grey-5.jpg">
					</div>
				</div>
				<div class="thumb-gallery-thumbs owl-carousel owl-theme manual thumb-gallery-thumbs">
					<div class="cur-pointer">
						<img alt="" class="img-fluid" src="<?php echo base_url('assets/user/') ?>img/products/product-grey-7.jpg">
					</div>
					<div class="cur-pointer">
						<img alt="" class="img-fluid" src="<?php echo base_url('assets/user/') ?>img/products/product-grey-7-2.jpg">
					</div>
					<div class="cur-pointer">
						<img alt="" class="img-fluid" src="<?php echo base_url('assets/user/') ?>img/products/product-grey-7-3.jpg">
					</div>
					<div class="cur-pointer">
						<img alt="" class="img-fluid" src="<?php echo base_url('assets/user/') ?>img/products/product-grey-8.jpg">
					</div>
					<div class="cur-pointer">
						<img alt="" class="img-fluid" src="<?php echo base_url('assets/user/') ?>img/products/product-grey-6.jpg">
					</div>
					<div class="cur-pointer">
						<img alt="" class="img-fluid" src="<?php echo base_url('assets/user/') ?>img/products/product-grey-5.jpg">
					</div>
				</div>
			</div>

		</div>

		<div class="col-lg-6">

			<div class="summary entry-summary position-relative">

				<h1 class="font-weight-bold text-7 mb-0"><a href="#" class="text-decoration-none text-color-dark text-color-hover-primary"><?= $product['prod_application'] ?></a></h1>
				<ul class="list list-unstyled text-2">
					<li class="mb-0">UCAL Part Number: <strong class="text-color-dark"><?= $product['ucal_part'] ?></strong></li>
					<li class="mb-0">Customer Part Number: <strong class="text-color-dark"><?= $product['oe_part'] ?></strong></li>
				</ul>
				<!-- <div class="pb-0 clearfix d-flex align-items-center">
					<div title="Rated 3 out of 5" class="float-start">
						<input type="text" class="d-none" value="3" title="" data-plugin-star-rating data-plugin-options="{'displayOnly': true, 'color': 'primary', 'size':'xs'}">
					</div>

					<div class="review-num">
						<span class="count" itemprop="ratingCount">(2</span> reviews)
					</div>
				</div> -->

				<div class="divider divider-small">
					<hr class="bg-color-grey-scale-4">
				</div>

				<p class="price mb-3">
					<span class="sale text-color-dark">₹<?= $product['prod_selling'] ?></span>
					<span class="amount">₹<?= $product['prod_mrp'] ?></span>
				</p>

				<p class="text-3-5 mb-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus nibh sed elimttis adipiscing. Fusce in hendrerit purus. Lorem ipsum dolor sit amet.</p>

				<ul class="list list-unstyled text-2">
					<li class="mb-0">Stock: <strong class="text-color-primary">AVAILABLE</strong></li>
					<li class="mb-0">MOQ: <strong class="text-color-dark">10Pcs</strong></li>
				</ul>


				<form enctype="multipart/form-data" method="post" class="cart">
					<!-- <table class="table table-borderless" style="max-width: 300px;">
						<tbody>
							<tr>
								<td class="align-middle text-2 px-0 py-2">SIZE:</td>
								<td class="px-0 py-2">
									<div class="custom-select-1">
										<select name="size" class="form-control form-select text-1 h-auto py-2">
											<option value="">PLEASE CHOOSE</option>
											<option value="blue">Small</option>
											<option value="red">Normal</option>
											<option value="green">Big</option>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td class="align-middle text-2 px-0 py-2">COLOR:</td>
								<td class="px-0 py-2">
									<div class="custom-select-1">
										<select name="color" class="form-control form-select text-1 h-auto py-2">
											<option value="">PLEASE CHOOSE</option>
											<option value="blue">Blue</option>
											<option value="red">Red</option>
											<option value="green">Green</option>
										</select>
									</div>
								</td>
							</tr>
						</tbody>
					</table> -->
					<hr>
					<div class="quantity quantity-lg">
						<input type="button" class="minus text-color-hover-light bg-color-hover-primary border-color-hover-primary" value="-">
						<input type="text" class="input-text qty text" title="Qty" value="10" name="quantity" min="10" step="1">
						<input type="button" class="plus text-color-hover-light bg-color-hover-primary border-color-hover-primary" value="+">
					</div>
					<button href="javascript:void(0)" onclick="addTocart(<?= $product['ucal_part'] ?>)" class="btn btn-dark btn-modern text-uppercase bg-color-hover-primary border-color-hover-primary">Add to cart</button>
					<hr>
				</form>

				<div class="d-flex align-items-center">
					<ul class="social-icons social-icons-medium social-icons-clean-with-border social-icons-clean-with-border-border-grey social-icons-clean-with-border-icon-dark me-3 mb-0">
						<!-- Facebook -->
						<li class="social-icons-facebook">
							<a href="http://www.facebook.com/sharer.php?u=https://www.ucal.com" target="_blank" data-bs-toggle="tooltip" data-bs-animation="false" data-bs-placement="top" title="Share On Facebook">
								<i class="fab fa-facebook-f"></i>
							</a>
						</li>
						<!-- Google+ -->
						<li class="social-icons-googleplus">
							<a href="https://plus.google.com/share?url=https://www.ucal.com" target="_blank" data-bs-toggle="tooltip" data-bs-animation="false" data-bs-placement="top" title="Share On Google+">
								<i class="fab fa-google-plus-g"></i>
							</a>
						</li>
						<!-- Twitter -->
						<li class="social-icons-twitter">
							<a href="https://twitter.com/share?url=https://www.ucal.com&amp;text=Simple%20Share%20Buttons&amp;hashtags=simplesharebuttons" target="_blank" data-bs-toggle="tooltip" data-bs-animation="false" data-bs-placement="top" title="Share On Twitter">
								<i class="fab fa-twitter"></i>
							</a>
						</li>
						<!-- Email -->
						<li class="social-icons-email">
							<a href="mailto:?Subject=Share This Page&amp;Body=I%20saw%20this%20and%20thought%20of%20you!%20 https://www.ucal.com" data-bs-toggle="tooltip" data-bs-animation="false" data-bs-placement="top" title="Share By Email">
								<i class="far fa-envelope"></i>
							</a>
						</li>
					</ul>
					<a href="#" class="d-flex align-items-center text-decoration-none text-color-dark text-color-hover-primary font-weight-semibold text-2">
						<i class="far fa-heart me-1"></i> SAVE TO WISHLIST
					</a>
				</div>

			</div>


		</div>
	</div>
</div>
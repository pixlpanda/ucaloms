<div role="main" class="main shop pt-4">

			<div class="container">

				<div class="row">
					<div class="col-lg-3 order-2 order-lg-1">
						<aside class="sidebar">
							<form action="page-search-results.html" method="get">
								<div class="input-group mb-3 pb-1">
									<input class="form-control text-1" placeholder="Search..." name="s" id="s" type="text">
									<button type="submit" class="btn btn-dark text-1 p-2"><i class="fas fa-search m-2"></i></button>
								</div>
							</form>
							<h5 class="font-weight-semi-bold pt-3">Categories</h5>
							<ul class="nav nav-list flex-column">
								<?php foreach ($categories as $category ): ?>
									<li class="nav-item"><a class="nav-link <?= ($selected == $category['category'] ? 'text-2 font-weight-bold' : '') ?>" href="<?= base_url('products/byCategory/'.$category['category']); ?>"><?= $category['category'] ?></a></li>	
								<?php endforeach; ?>
							</ul>
							<h5 class="font-weight-semi-bold pt-5">Brands</h5>
							<ul class="nav nav-list flex-column">
								<?php foreach ($brands as $brand ): ?>
									<li class="nav-item"><a class="nav-link <?= ($selected == $brand['brand'] ? 'text-2 font-weight-bold' : '') ?>" href="<?= base_url('products/byBrand/'.$brand['brand']); ?>"><?= $brand['brand'] ?></a></li>	
								<?php endforeach; ?>
							</ul>
							<!-- <div class="row mb-5">
								<div class="col">
									<h5 class="font-weight-semi-bold pt-5">Top Rated Products</h5>
									<div class="product row row-gutter-sm align-items-center mb-4">
										<div class="col-5 col-lg-5">
											<div class="product-thumb-info border-0">
												<a href="shop-product-sidebar-left.html">
													<div class="product-thumb-info-image">
														<img alt="" class="img-fluid" src="<?= base_url('assets/')?>user/img/products/product-grey-6.jpg">
													</div>
												</a>
											</div>
										</div>
										<div class="col-7 col-lg-7 ms-md-0 ms-lg-0 ps-lg-1 pt-1">
											<a href="#" class="d-block text-uppercase text-decoration-none text-color-default text-color-hover-primary line-height-1 text-0 mb-2">hat</a>
											<h3 class="text-3-5 font-weight-medium font-alternative text-transform-none line-height-3 mb-0"><a href="shop-product-sidebar-right.html" class="text-color-dark text-color-hover-primary text-decoration-none">Blue Hat</a></h3>
											<div title="Rated 5 out of 5">
												<input type="text" class="d-none" value="5" title="" data-plugin-star-rating data-plugin-options="{'displayOnly': true, 'color': 'dark', 'size':'xs'}">
											</div>
											<p class="price text-4 mb-0">
												<span class="sale text-color-dark font-weight-semi-bold">$299,00</span>
												<span class="amount">$289,00</span>
											</p>
										</div>
									</div>
									<div class="product row row-gutter-sm align-items-center mb-4">
										<div class="col-5 col-lg-5">
											<div class="product-thumb-info border-0">
												<a href="shop-product-sidebar-left.html">
													<div class="product-thumb-info-image">
														<img alt="" class="img-fluid" src="<?= base_url('assets/')?>user/img/products/product-grey-8.jpg">
													</div>
												</a>
											</div>
										</div>
										<div class="col-7 col-lg-7 ms-md-0 ms-lg-0 ps-lg-1 pt-1">
											<a href="#" class="d-block text-uppercase text-decoration-none text-color-default text-color-hover-primary line-height-1 text-0 mb-2">accessories</a>
											<h3 class="text-3-5 font-weight-medium font-alternative text-transform-none line-height-3 mb-0"><a href="shop-product-sidebar-right.html" class="text-color-dark text-color-hover-primary text-decoration-none">Adventurer Bag</a></h3>
											<div title="Rated 5 out of 5">
												<input type="text" class="d-none" value="5" title="" data-plugin-star-rating data-plugin-options="{'displayOnly': true, 'color': 'dark', 'size':'xs'}">
											</div>
											<p class="price text-4 mb-0">
												<span class="sale text-color-dark font-weight-semi-bold">$99,00</span>
												<span class="amount">$79,00</span>
											</p>
										</div>
									</div>
									<div class="product row row-gutter-sm align-items-center mb-4">
										<div class="col-5 col-lg-5">
											<div class="product-thumb-info border-0">
												<a href="shop-product-sidebar-left.html">
													<div class="product-thumb-info-image">
														<img alt="" class="img-fluid" src="<?= base_url('assets/')?>user/img/products/product-grey-9.jpg">
													</div>
												</a>
											</div>
										</div>
										<div class="col-7 col-lg-7 ms-md-0 ms-lg-0 ps-lg-1 pt-1">
											<a href="#" class="d-block text-uppercase text-decoration-none text-color-default text-color-hover-primary line-height-1 text-0 mb-2">sports</a>
											<h3 class="text-3-5 font-weight-medium font-alternative text-transform-none line-height-3 mb-0"><a href="shop-product-sidebar-right.html" class="text-color-dark text-color-hover-primary text-decoration-none">Baseball Ball</a></h3>
											<div title="Rated 5 out of 5">
												<input type="text" class="d-none" value="5" title="" data-plugin-star-rating data-plugin-options="{'displayOnly': true, 'color': 'dark', 'size':'xs'}">
											</div>
											<p class="price text-4 mb-0">
												<span class="sale text-color-dark font-weight-semi-bold">$399,00</span>
												<span class="amount">$299,00</span>
											</p>
										</div>
									</div>
								</div>
							</div> -->
						</aside>
					</div>
					<div class="col-lg-9 order-1 order-lg-2">

						<div class="masonry-loader masonry-loader-showing">
							<div class="row products product-thumb-info-list" data-plugin-masonry data-plugin-options="{'layoutMode': 'fitRows'}">
								<?php
								if ($products){
								foreach ($products as $product ): 
									?>
									
							<div class="col-sm-6 col-lg-4">
									<div class="product mb-0">
										<div class="product-thumb-info border-0 mb-3">

											<div class="product-thumb-info-badges-wrapper">
												<span class="badge badge-ecommerce badge-success">NEW</span>

											</div>

											<!-- <div class="addtocart-btn-wrapper">
												<a href="shop-cart.html" class="text-decoration-none addtocart-btn" title="Add to Cart">
													<i class="icons icon-bag"></i>
												</a>
											</div> -->

											<a href="<?= base_url('product-details/quickView/'.$product['ucal_part']) ?>" class="quick-view font-weight-semibold text-2">
												View Details / Add to Cart
											</a>
											<a href="<?= base_url('product-details/quickView/'.$product['ucal_part']) ?>">
												<div class="product-thumb-info-image">
													<img alt="" class="img-fluid" src="<?= base_url('assets/')?>user/img/products/product-grey-1.jpg">

												</div>
											</a>
										</div>
										<div class="d-flex justify-content-between">
											<div>
												<a href="#" class="d-block text-uppercase text-decoration-none text-color-default text-color-hover-primary line-height-1 text-0 mb-1"><?= $product['brand'].' | '.$product['category'] ?></a>
												<h3 class="text-3-5 font-weight-medium font-alternative text-transform-none line-height-3 mb-0"><a href="<?= base_url('product-details/quickView/'.$product['ucal_part']) ?>" class="text-color-dark text-color-hover-primary"><?= $product['prod_application'] ?></a></h3>
											</div>
											<a href="#" class="text-decoration-none text-color-default text-color-hover-dark text-4"><i class="far fa-heart"></i></a>
										</div>
										<!-- <div title="Rated 5 out of 5">
											<input type="text" class="d-none" value="5" title="" data-plugin-star-rating data-plugin-options="{'displayOnly': true, 'color': 'default', 'size':'xs'}">
										</div> -->
										<p class="price text-5 mb-3">
											<span class="sale text-color-dark font-weight-semi-bold">₹<?= $product['prod_selling'] ?></span>
											<span class="amount">₹<?= $product['prod_mrp'] ?></span>
										</p>
									</div>
								</div>
								<?php endforeach;
								}else{
								?>
								<p class="text-center">No products available at the moment.</p>
								<?php } ?>
							</div>
							<?php if ($products) { ?>
								
							<div class="row mt-4">
								<div class="col">
									<ul class="pagination float-end">
										<li class="page-item"><a class="page-link <?= ($page == 0 ? 'disabled' : '') ?>" href="<?= ($page != 0 ? base_url('products/'.$by.'/'.$selected.'/'.$page-1) : '#') ?>"><i class="fas fa-angle-left"></i></a></li>
										<li class="page-item active"><a class="page-link" href="#"><?= ($page == 0 ? 1 : $page) ?></a></li>
										<?php if(count($products) > 11): ?>
										<li class="page-item"><a class="page-link" href="<?= ($page == 0 ? base_url('products/'.$by.'/'.$selected.'/'.$page+2) : base_url('products/'.$by.'/'.$selected.'/'.$page+1)) ?>"><i class="fas fa-angle-right"></i></a></li>
										<?php endif; ?>
									</ul>
								</div>
							</div>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>

		</div>

		
<div role="main" class="main">

				<section class="page-header page-header-modern bg-color-light-scale-1 page-header-lg">
					<div class="container">
						<div class="row">
							<div class="col-md-12 align-self-center p-static order-2 text-center">
								<h1 class="font-weight-bold text-dark">User Details</h1>
							</div>
							<div class="col-md-12 align-self-center order-1">
								<ul class="breadcrumb d-block text-center">
									<li><a href="#">User</a></li>
									<li class="active">Update User Details</li>
								</ul>
							</div>
						</div>
					</div>
				</section>

				<div class="container pt-3 pb-2">

					<div class="row pt-2">
						<div class="col-lg-3 mt-4 mt-lg-0">

							<div class="d-flex justify-content-center mb-4">
								<div class="profile-image-outer-container">
									<div class="profile-image-inner-container bg-color-primary">
										<img src="img/avatars/avatar.jpg">
										<span class="profile-image-button bg-color-dark">
											<i class="fas fa-camera text-light"></i>
										</span>
									</div>
									<input type="file" id="file" class="form-control profile-image-input">
								</div>
							</div>

							<aside class="sidebar mt-2" id="sidebar">
								<ul class="nav nav-list flex-column mb-5">
									<li class="nav-item"><a class="nav-link text-3 text-dark active" href="#">My Profile</a></li>
									<li class="nav-item"><a class="nav-link text-3" href="#">User Preferences</a></li>
									<li class="nav-item"><a class="nav-link text-3" href="#">Billing</a></li>
									<li class="nav-item"><a class="nav-link text-3" href="#">Invoices</a></li>
								</ul>
							</aside>

						</div>
						<div class="col-lg-9" id="pageUpdater">

							<form role="form" id="userForm" class="needs-validation" action="#" method="post">
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 required">User Name</label>
							        <div class="col-lg-9">
							            <input class="form-control text-3 h-auto py-2" type="text" name="us_name" value="<?= (isset($userdetail['us_name']) ? $userdetail['us_name'] : '') ?>" disabled>
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 required">eMail Id</label>
							        <div class="col-lg-9">
							            <input class="form-control text-3 h-auto py-2" type="email" name="us_email" value="<?= (isset($userdetail['us_email']) ? $userdetail['us_email'] : '') ?>" disabled>
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 required">Contact Number</label>
							        <div class="col-lg-9">
							            <input class="form-control text-3 h-auto py-2 phoneNumber" type="number" name="us_phone" value="<?= (isset($userdetail['us_phone']) ? $userdetail['us_phone'] : '') ?>" required>
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 required">User Designation</label>
							        <div class="col-lg-9">
							            <input class="form-control text-3 h-auto py-2" type="text" name="us_designation" value="<?= (isset($userdetail['us_designation']) ? $userdetail['us_designation'] : '') ?>" required>
							        </div>
							    </div>
                                <hr>
                                <h4 class="text-center">Company Details</h4>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 required">Company Name</label>
							        <div class="col-lg-9">
							            <input class="form-control text-3 h-auto py-2" type="text" name="comp_name" id="companyName" value="<?= (isset($companyDetail['comp_name']) ? $companyDetail['comp_name'] : '') ?>" <?= (isset($companyDetail['comp_name']) ? 'disabled' : '') ?> required>
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 required">GST</label>
							        <div class="col-lg-9">
							            <input class="form-control text-3 h-auto py-2" type="text" name="gst" value="<?= (isset($companyDetail['gst']) ? $companyDetail['gst'] : ''); ?>" <?= (isset($companyDetail['gst']) ? "disabled" : ''); ?> required>
							        </div>
							    </div><div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 required">Company eMail Id</label>
							        <div class="col-lg-9">
							            <input class="form-control text-3 h-auto py-2" type="email" name="comp_email" value="<?= (isset($companyDetail['comp_email']) ? $companyDetail['comp_email'] : '') ?>" <?= (isset($companyDetail['comp_email']) ? 'disabled' : '') ?>>
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 required">Company Contact Number</label>
							        <div class="col-lg-9">
							            <input class="form-control text-3 h-auto py-2 phoneNumber" type="number" name="comp_contact" <?= (isset($companyDetail['comp_contact']) ? 'disabled' : '') ?> value="<?= (isset($companyDetail['comp_contact']) ? $companyDetail['comp_contact'] : '') ?>" required>
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 required">Address</label>
							        <div class="col-lg-9">
							            <input class="form-control text-3 h-auto py-2" type="text" name="comp_address" value="<?= (isset($companyDetail['comp_address']) ? $companyDetail['comp_address'] : ''); ?>" <?= (isset($companyDetail['comp_address']) ? 'disabled' : ''); ?> placeholder="Street">
							        </div>
							    </div>
							    <div class="form-group row">
							        <label class="col-lg-3 col-form-label form-control-label line-height-9 pt-2 text-2 required"></label>
							        <div class="col-lg-6">
							            <input class="form-control text-3 h-auto py-2" type="text" name="state" value="<?= (isset($companyDetail['state']) ? $companyDetail['state'] : ''); ?>" <?= (isset($companyDetail['state']) ? 'disabled' : ''); ?> placeholder="State">
							        </div>
							        <div class="col-lg-3">
							            <input class="form-control text-3 h-auto py-2" type="text" name="pincode" value="<?= (isset($companyDetail['pincode']) ? $companyDetail['pincode'] : ''); ?>" <?= (isset($companyDetail['pincode']) ? 'disabled' : ''); ?> placeholder="Pincode">
							        </div>
							    </div>
                                <?php if (empty($companyDetail[''])) { ?>
                                
							    <div class="form-group row">
									<div class="form-group col-lg-9">

									</div>
									<div class="form-group col-lg-3">
										<input type="submit" value="Update" class="btn btn-primary btn-modern float-end" id="updateDetails" data-loading-text="Loading...">
									</div>
							    </div>
                                <?php } ?>
							</form>

						</div>
					</div>

				</div>

			</div>
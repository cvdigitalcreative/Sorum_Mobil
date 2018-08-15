

	<!-- Slide1 -->
	<section class="slide1">
		<div class="wrap-slick1">
			<div class="slick1">
			<?php foreach ($header->result() as $row): ?>
				<div class="item-slick1 item1-slick1" style="background-image: url(<?php echo base_url().'assets/admin/images/'.$row->tulisan_gambar;?>);">
					<div class="wrap-content-slide1 sizefull flex-col-c-m p-l-15 p-r-15 p-t-150 p-b-170">
						

						<h2 class="caption2-slide1 xl-text1 t-center animated visible-false m-b-37" data-appear="fadeInUp">
							<?php echo $row->tulisan_judul;?>
						</h2>

						<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="zoomIn">
							<!-- Button -->
							<a href="#promo" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
								Explore Now
							</a>
						</div>
					</div>
				</div>
			<?php endforeach;?>

			</div>
		</div>
	</section>

	
	<!-- New Product -->
	<section class="newproduct bgwhite p-t-45 p-b-105" id="promo">
		<div class="container">
			<div class="sec-title p-b-60">
				<h3 class="m-text5 t-center">
					Our Promo
				</h3>
			</div>

			<!-- Slide2 -->
		<div class="" >
				<div class="slick2">
					<?php foreach ($Price->result() as $row): ?>
					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-img wrap-pic-w of-hidden pos-relative">
								<a href="<?php echo base_url().'Home/detail/'.$row->tulisan_slug; ?>" class="trans-0-4">
									<img src="<?php echo base_url().'assets/admin/images/'.$row->tulisan_gambar;?>" alt="IMG-PRODUCT">
								</a>
								<!-- <div class="block2-overlay trans-0-4">
									<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
										
									</a>
								</div> -->
							</div>

							<div class="block2-txt p-t-20">
								<a href="<?php echo base_url().'Home/detail/'.$row->tulisan_slug; ?>" class="block2-name dis-block s-text3 p-b-5">
									<?php echo $row->tulisan_judul;?>
								</a>
								<span class="block2-oldprice m-text7 p-r-5">
									Mulai dari <?php echo $row->tulisan_harga;?>
								</span>
								<div>
								<span class="block2-newprice m-text8 p-r-5">
									<?php echo $row->tulisan_harga_promo;?>
								</span>
								</div>
							</div>
						</div>
					</div>
				<?php endforeach;?>

				</div>
			</div>
		</div>
	</section>

	<!-- New Product -->
	<section class="newproduct bgwhite p-t-45 p-b-105" id="items">
		<div class="container">
			<div class="sec-title p-b-60">
				<h3 class="m-text5 t-center">
					Our Items
				</h3>
			</div>

			<!-- Slide2 -->
			<div class="wrap-slick2">
				<div class="slick2">

					<?php foreach ($items->result() as $row): ?>
					<div class="item-slick2 p-l-15 p-r-15">
						<!-- Block2 -->
						<div class="block2">
							<div class="block2-img wrap-pic-w of-hidden pos-relative">
								<a href="<?php echo base_url().'Home/detail/'.$row->tulisan_slug; ?>" class="trans-0-4">
									<img src="<?php echo base_url().'assets/admin/images/'.$row->tulisan_gambar;?>" alt="IMG-PRODUCT">
								</a>
								<!-- <div class="block2-overlay trans-0-4">
									<a href="#" class="block2-btn-addwishlist hov-pointer trans-0-4">
										
									</a>
								</div> -->
							</div>

							<div class="block2-txt p-t-20">
								<a href="<?php echo base_url().'Home/detail/'.$row->tulisan_slug; ?>" class="block2-name dis-block s-text3 p-b-5">
									<?php echo $row->tulisan_judul;?>
								</a>
								<span class="block2-price m-text6 p-r-5">
									Mulai dari <?php echo $row->tulisan_harga;?>
								</span>
							</div>
						</div>
					</div>
				<?php endforeach;?>
					
				</div>
			</div>

		</div>
	</section>


	<!-- Blog -->
	<!-- <section class="blog bgwhite p-t-94 p-b-65">
		<div class="container">
			<div class="sec-title p-b-52">
				<h3 class="m-text5 t-center">
					Our Blog
				</h3>
			</div>

			<div class="wrap-btn-slide1 w-size1 animated visible-false" data-appear="zoomIn"> -->
							<!-- Button -->
				<!-- <a href="#promo" class="flex-c-m size2 bo-rad-23 s-text2 bgwhite hov1 trans-0-4">
					Explore Now
				</a>
			</div>	
		</div>
	</section> -->


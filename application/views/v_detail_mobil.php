	<!-- content page -->

	<section class="bgwhite p-t-60 p-b-25">
		<div class="container">
			<div class="row">
			
				<div class="col-md-8 col-lg-9 p-b-80">
					<div class="p-r-50 p-r-0-lg">
						<div class="p-b-40">
							<div class="slideshow-container">
							<?php foreach ($gambar->result() as $row): ?>
							<div class="blog-detail-img wrap-pic-w mySlides">
								<img src="<?php echo base_url().'assets/admin/images/'.$row->galeri_gambar;?>" alt="IMG-BLOG">
							</div>	
							<?php endforeach;?>
							
							
							<a class="prev" onclick="plusSlides(-1)" style="color: #ea7a17;">&#10094;</a>
							<a class="next" onclick="plusSlides(1)" style="color: #ea7a17;">&#10095;</a>
							</div>
							<?php foreach ($deskripsi->result() as $row): ?>
							<div class="blog-detail-txt p-t-33">
								<h4 class="p-b-11 m-text24">
									<?php echo $row->tulisan_judul;?>
								</h4>

								<div class="s-text8 flex-w flex-m p-b-21">
									<span>
										By Admin
									</span>
								</div>

								<p>
									


								</p>

								<p>
									<?php echo $row->tulisan_isi;?>
								</p>
							</div>

						</div>
					</div>
				</div>
			<?php endforeach;?>

				<div class="col-md-4 col-lg-3 p-b-80">
					<div class="rightbar">
						
						<!-- Our Promo -->
						<h4 class="m-text23  p-b-34">
							Our Promo
						</h4>

						<ul class="bgwhite">
							<?php foreach ($Price->result() as $row): ?>
							<li class="flex-w p-b-20">
								<a href="<?php echo base_url().'Home/detail/'.$row->tulisan_slug; ?>" class="dis-block wrap-pic-w w-size22 m-r-20 trans-0-4 hov4">
									<img src="<?php echo base_url().'assets/admin/images/'.$row->tulisan_gambar;?>" alt="IMG-PRODUCT">
								</a>

								<div class="w-size23 p-t-5">
									<a href="<?php echo base_url().'Home/detail/'.$row->tulisan_slug; ?>" class="s-text20">
										<?php echo $row->tulisan_judul;?>
									</a>

									<span class="dis-block s-text17 p-t-6">
										<?php echo $row->tulisan_harga_promo;?>
									</span>
								</div>
							</li>
							<?php endforeach; ?>

							

						<!-- Our Items -->
						<h4 class="m-text23  p-b-34">
							Our Items
						</h4>

						<ul class="bgwhite">
						<?php foreach ($items->result() as $row): ?>
							<li class="flex-w p-b-20">
								<a href="<?php echo base_url().'Home/detail/'.$row->tulisan_slug; ?>" class="dis-block wrap-pic-w w-size22 m-r-20 trans-0-4 hov4">
									<img src="<?php echo base_url().'assets/admin/images/'.$row->tulisan_gambar;?>" alt="IMG-PRODUCT">
								</a>

								<div class="w-size23 p-t-5">
									<a href="<?php echo base_url().'Home/detail/'.$row->tulisan_slug; ?>" class="s-text20">
										<?php echo $row->tulisan_judul;?>
									</a>

									<span class="dis-block s-text17 p-t-6">
										<?php echo $row->tulisan_harga;?>
									</span>
								</div>
							</li>
						<?php endforeach; ?>
						</ul>

					</div>
				</div>
			</div>
		</div>
	</section>
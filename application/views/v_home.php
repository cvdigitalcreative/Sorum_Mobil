<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Mobil</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" >
    <!-- Icon -->
    <link rel="stylesheet" type="text/css" href="assets/fonts/line-icons.css">
    <!-- Slicknav -->
    <link rel="stylesheet" type="text/css" href="assets/css/slicknav.css">
    <!-- Nivo Lightbox -->
    <link rel="stylesheet" type="text/css" href="assets/css/nivo-lightbox.css" >
    <!-- Animate -->
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css">
    <!-- Main Style -->
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
    <!-- Responsive Style -->
    <link rel="stylesheet" type="text/css" href="assets/css/responsive.css">

  </head>
  <body>

    <!-- Header Area wrapper Starts -->
    <header id="header-wrap">
      <!-- Navbar Start -->
      <nav class="navbar navbar-expand-lg fixed-top scrolling-navbar">
        <div class="container">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-navbar" aria-controls="main-navbar" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
              <span class="icon-menu"></span>
              <span class="icon-menu"></span>
              <span class="icon-menu"></span>
            </button>
            <a href="<?php echo base_url()?>" class="navbar-brand"><img src="assets/img/logo.png" alt=""></a>
          </div>
          <div class="collapse navbar-collapse" id="main-navbar">
            <ul class="navbar-nav mr-auto w-100 justify-content-end">
              <li class="nav-item active">
                <a class="nav-link" href="#header-wrap">
                  Home
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#item">
                  Items
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#pricing">
                  Pricing
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#gallery">
                  Gallery
                </a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link" href="#contact-map">
                  Contact
                </a>
              </li>
            </ul>
          </div>
        </div>

        <!-- Mobile Menu Start -->
        <ul class="mobile-menu">
          <li>
            <a class="page-scrool" href="#header-wrap">Home</a>
          </li>
          <li>
            <a class="page-scrool" href="#item">Items</a>
          </li>
          <li>
            <a class="page-scroll" href="#pricing">Pricing</a>
          </li>
          <li>
            <a class="page-scroll" href="#gallery">Gallery</a>
          </li>
          <li>
            <a class="page-scroll" href="#contact-map">Contact</a>
          </li>
        </ul>
        <!-- Mobile Menu End -->

      </nav>
      <!-- Navbar End -->

      <!-- Main Carousel Section Start -->
      <?php foreach ($header->result() as $row): ?>
      <div id="main-slide1">
      <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="<?php echo base_url().'assets/admin/images/'.$row->tulisan_gambar;?>" alt="First">
            <div class="carousel-caption d-md-block">
              <p class="wow" data-wow-delay=".6s"><?php echo $row->tulisan_isi;?></p>
              <h1 class="wow heading" data-wow-delay=".4s"><?php echo $row->tulisan_judul;?></h1>
              <a href="#main1" class="wow btn btn-border btn-lg" data-wow-delay=".6s">Explore More</a>
            </div>
          </div>
      </div>
      </div>
      <?php endforeach;?>
      <!-- Main Carousel Section End -->


    </header>
    <!-- Header Area wrapper End --> 


    <section id="item" class="section-padding">
      <div class="container">
      <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h1 class="section-title wow fadeInUp" data-wow-delay="0.2s">our items</h1>
            </div>
          </div> 
        </div>
    <!-- item Carousel Section Start -->
      
      <div id="main-slide" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#main-slide" data-slide-to="0" class="active"></li>
          <?php 
            $no = 0;
            foreach ($items->result_array() as $row): 
            $no++;
          ?>
            <li data-target="#main-slide" data-slide-to="<?php echo $no;?>" class="active"></li>
          <?php endforeach;?>
        </ol>
        
        <div class="carousel-inner">
        <?php foreach ($items_first->result() as $row): ?>
          <div class="carousel-item active">
            <img class="d-block w-100" src="<?php echo base_url().'assets/admin/images/'.$row->tulisan_gambar;?>" alt="First slide">
            <div class="carousel-caption d-md-block">    
              <!-- <p class="fadeInUp wow" data-wow-delay=".6s"><?php echo $row->tulisan_isi; ?></p> -->
              <h1 class="heading" data-wow-delay=".4s"><?php echo $row->tulisan_judul; ?></h1>
            </div>
          </div>
          <?php endforeach;?>
          <?php foreach ($items->result() as $row): ?>
          <div class="carousel-item">
            <img class="d-block w-100" src="<?php echo base_url().'assets/admin/images/'.$row->tulisan_gambar;?>" alt="Second slide">
            <div class="carousel-caption d-md-block">
              <!-- <p class="fadeInUp wow" data-wow-delay=".6s"><?php echo $row->tulisan_isi; ?></p> -->
              <h1 class="heading" data-wow-delay=".7s"><?php echo $row->tulisan_judul; ?></h1>
            </div>
          </div>
          <?php endforeach;?>
        <a class="carousel-control-prev" href="#main-slide" role="button" data-slide="prev">
          <span class="carousel-control" aria-hidden="true"><i class="lni-chevron-left"></i></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#main-slide" role="button" data-slide="next">
          <span class="carousel-control" aria-hidden="true"><i class="lni-chevron-right"></i></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
      </div>
      </section>
      <!-- Item Carousel Section End -->

      <!-- Ticket Pricing Area Start -->
    <section id="pricing" class="section-padding" style="background: url(<?php echo base_url()?>assets/img/background/bg-pricing.jpg);">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h1 class="section-title wow fadeInUp" data-wow-delay="0.2s">Our Pricing</h1>
                
            </div>
          </div>
        </div>
        <div class="row">
        <?php foreach ($Price->result() as $row): ?>
           <div class="col-lg-4 col-sm-6 col-xa-12 mb-3">
            <div class="price-block-wrapper wow fadeInLeft" data-wow-delay="0.2s">
              <div class="icon">
                <i><img src="<?php echo base_url().'assets/admin/images/'.$row->tulisan_gambar;?>" alt="Second slide" style="width:200px; height:100px;"></i>
              </div>
              <div class="colmun-title">
                <h5><?php echo $row->tulisan_judul;?></h5>
              </div>
              <div class="price">
                <h2><?php echo $row->tulisan_harga_promo;?></h2>
                <p><strike><?php echo $row->tulisan_harga;?></strike></p>
              </div>
              <div class="pricing-list">
                <p><u>Detail :</u></p>
                <p><?php echo $row->tulisan_isi;?></p>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
        </div>
      </div>
    </section>
    <!-- Ticket Pricing Area End -->

    <!-- Gallary Section Start -->
    <section id="gallery" class="section-padding">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h1 class="section-title wow fadeInUp" data-wow-delay="0.2s">our event gallery</h1>
            </div>
          </div> 
        </div>
        
        <div class="row">
        <?php foreach ($items_gallery->result() as $row): ?>
          <div class="col-md-6 col-sm-6 col-lg-4">
            <div class="gallery-box">
              <div class="img-thumb">
                <img class="img-fluid" src="<?php echo base_url().'assets/admin/images/'.$row->galeri_gambar;?>" alt="">
              </div>
              <div class="overlay-box text-center">
                <a class="lightbox" href="<?php echo base_url().'assets/admin/images/'.$row->galeri_gambar;?>">
                  <i class="lni-plus"></i>
                </a>
              </div>
            </div>
          </div>
          <?php endforeach;?>
        </div>
        
      </div>
    </section>
    <!-- Gallary Section End -->  

    <!-- Map Section Start -->
    <!-- <section id="google-map-area">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div id="conatiner-map"></div>
          </div>
        </div>
      </div>
    </section> -->
    <!-- Map Section End -->

    <!-- Contact Us Section -->
    <section id="contact-map" class="section-padding">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h1 class="section-title wow fadeInUp" data-wow-delay="0.2s">Drop A Message</h1>
            </div>
          </div>
          <div class="col-lg-7 col-md-12 col-xs-12">
            <div class="container-form wow fadeInLeft" data-wow-delay="0.2s">
              <div class="form-wrapper">
                <form role="form" method="post" action="<?php echo base_url().'Home/kirim_pesan'?>" data-toggle="validator">
                  <div class="row">
                    <div class="col-md-6 form-line">
                      <div class="form-group">
                        <input type="text" class="form-control" name="name" placeholder="First Name" required data-error="Please enter your name">
                        <div class="help-block with-errors"></div>
                      </div>
                    </div>
                    <div class="col-md-6 form-line">
                      <div class="form-group">
                        <input type="email" class="form-control" name="email" placeholder="Email" required data-error="Please enter your Email">
                        <div class="help-block with-errors"></div>
                      </div> 
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <textarea class="form-control" rows="4" name="message" required data-error="Write your message"></textarea>
                      </div>
                      <div class="form-submit">
                        <button type="submit" class="btn btn-common"><i class="fa fa-paper-plane" aria-hidden="true"></i>  Send Us Now</button>
                        <div id="msgSubmit" class="h3 text-center hidden"><p><?php echo $this->session->flashdata('msg');?></p></div>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Contact Us Section End -->

    <!-- Footer Section Start -->
    <footer class="footer-area section-padding">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-delay="0.2s">
            <h3><img src="assets/img/logo.png" alt=""></h3>
            <?php foreach ($footer->result() as $row): ?>
            <p>
             <?php echo $row->tulisan_isi?>
            </p>
          <?php endforeach; ?>
          </div>
          <div class="col-md-6 col-lg-3 col-sm-6 col-xs-12" style="max-width:180px;">

          </div>
          <div class="col-md-6 col-lg-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-delay="0.4s">
            <h3>QUICK LINKS</h3>
            <ul>
              <li><a href="#">About Conference</a></li>
              <li><a href="#">Our Speakers</a></li>
              <li><a href="#">Event Shedule</a></li>
              <li><a href="#">Latest News</a></li>
              <li><a href="#">Event Photo Gallery</a></li>
            </ul>
          </div>
          <div class="col-md-6 col-lg-3 col-sm-6 col-xs-12" style="max-width:61px;">

          </div>
          <div class="col-md-6 col-lg-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-delay="0.8s">
            <!-- /.widget -->
            <h3 class="widget-title">FOLLOW US ON</h3>
            <div class="widget">
              <!-- <h3 class="widget-title">FOLLOW US ON</h3> -->
              <ul class="footer-social">
                <li><a class="facebook" href="#"><i class="lni-facebook-filled"></i></a></li>
                <li><a class="twitter" href="#"><i class="lni-twitter-filled"></i></a></li>
                <li><a class="linkedin" href="#"><i class="lni-linkedin-filled"></i></a></li>
                <li><a class="google-plus" href="#"><i class="lni-google-plus"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- Footer Section End -->

    <div id="copyright">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="site-info">
              <p>© Designed and Developed by <a href="http://digitalcreative.web.id/" rel="nofollow">Digital Creative</a></p>
            </div>      
          </div>
        </div>
      </div>
    </div>

    <!-- Go to Top Link -->
    <a href="#" class="back-to-top">
    	<i class="lni-chevron-up"></i>
    </a>

    <div id="preloader">
      <div class="sk-circle">
        <div class="sk-circle1 sk-child"></div>
        <div class="sk-circle2 sk-child"></div>
        <div class="sk-circle3 sk-child"></div>
        <div class="sk-circle4 sk-child"></div>
        <div class="sk-circle5 sk-child"></div>
        <div class="sk-circle6 sk-child"></div>
        <div class="sk-circle7 sk-child"></div>
        <div class="sk-circle8 sk-child"></div>
        <div class="sk-circle9 sk-child"></div>
        <div class="sk-circle10 sk-child"></div>
        <div class="sk-circle11 sk-child"></div>
        <div class="sk-circle12 sk-child"></div>
      </div>
    </div>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="assets/js/jquery-min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <script src="assets/js/jquery.nav.js"></script>
    <script src="assets/js/jquery.easing.min.js"></script>
    <script src="assets/js/wow.js"></script>
    <script src="assets/js/jquery.slicknav.js"></script>
    <script src="assets/js/nivo-lightbox.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="assets/js/form-validator.min.js"></script>
    <script src="assets/js/contact-form-script.min.js"></script>
    <script src="assets/js/map.js"></script>
    <script type="text/javascript" src="//maps.googleapis.com/maps/api/js?key=AIzaSyDSLSFRa0DyBj9VGzT7GM6SFbSMcG0YNBM"></script>
      
  </body>
</html>

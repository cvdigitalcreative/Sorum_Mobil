<?php 
 
    $query=$this->db->query("SELECT * FROM tbl_inbox WHERE inbox_status='1'");
    $jum_pesan=$query->num_rows();

      $cek1 = "";
      $cek2 = "";
      $cek3 = "";
      $cek4 = "";
      $cek5 = "";
      $cek6 = "";
      $cek7 = "";
      $cek8 = "";
      $cek9 = "";
      $cek10 = "";
     
      
      if(isset($side)){
         switch ($side) {
          case 1:
            $cek1 = "active";
            break;
            case 2:
            $cek2 = "active";
            break;
            case 3:
            $cek3 = "active";
            break;
            case 4:
            $cek4 = "active";
            break;
            case 5:
            $cek5 = "active";
            break;
            case 6:
            $cek6 = "active";
            break;
            case 7:
            $cek7 = "active";
            break;
            case 8:
            $cek8 = "active";
            break;
            case 9:
            $cek9 = "active";
            break;
            case 10:
            $cek10 = "active";
            break;

         }
      }
    ?>
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu ">
        <li class="header ">Menu Utama</li>
        <li class="<?php echo $cek1?>">
          <a href="<?php echo base_url().'Admin/Dashboard'?>">
            <i class="fa fa-home"></i> <span>Dashboard</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>
        <li class="treeview <?php echo $cek2?>">
          <a href="#">
            <i class="fa fa-newspaper-o"></i>
            <span>Home</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php echo base_url().'Admin/Album'?>"><i class="fa fa-picture-o"></i> Album</a></li>
            <li><a href="<?php echo base_url().'Admin/Galeri'?>"><i class="fa fa-picture-o"></i> Galeri</a></li>  
                        <li><a href="<?php echo base_url().'Admin/Kategori'?>"><i class="fa fa-list"></i> Kategori Tulisan</a></li>
            <li><a href="<?php echo base_url().'Admin/Tulisan'?>"><i class="fa fa-list"></i> List Tulisan</a></li>
          </ul>
        </li>
        <li class="<?php echo $cek3?>">
          <a href="<?php echo base_url().'Admin/Pengguna'?>">
            <i class="fa fa-users"></i> <span>Pengguna</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>
        <!-- <li class="treeview <?php echo $cek7?>">
          <a href="#">
            <i class="fa fa-camera"></i>
            <span>Gallery</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">  -->
           <!-- <li><a href="<?php echo base_url().'Admin/Album'?>"><i class="fa fa-picture-o"></i> Kategori</a></li> -->
           <!--  <li><a href="<?php echo base_url().'Admin/Galeri'?>"><i class="fa fa-picture-o"></i> Photos</a></li>  
          </ul>
        </li> -->
        
        <li class="<?php echo $cek10?>">
          <a href="<?php echo base_url().'Admin/Inbox'?>">
            <i class="fa fa-envelope"></i> <span>Inbox</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"><?php echo $jum_pesan;?></small>
            </span>
          </a>
        </li>

         <li>
          <a href="<?php echo base_url().'Administrator/logout'?>">
            <i class="fa fa-sign-out"></i> <span>Sign Out</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>
        
       
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
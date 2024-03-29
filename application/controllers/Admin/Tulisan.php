<?php
class Tulisan extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('Administrator');
            redirect($url);
        };
		$this->load->model('m_kategori');
		$this->load->model('m_tulisan');
		$this->load->model('m_pengguna');
		$this->load->model('m_album');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_tulisan->get_all_tulisan();
		$y['title'] = 'Tulisan';
		$this->load->view('admin/v_header',$y);
		$this->load->view('admin/v_sidebar',["side" => 2]);
		$this->load->view('admin/v_tulisan',$x);
	}
	function add_tulisan(){
		$x['album']=$this->m_album->get_all_album();
		$x['kat']=$this->m_kategori->get_all_kategori();
		$y['title'] = 'Add Tulisan';
		$this->load->view('admin/v_header',$y);
		$this->load->view('admin/v_sidebar',["side" => 2]);
		$this->load->view('admin/v_add_tulisan',$x);
	}
	function get_edit(){
		$kode=$this->uri->segment(4);
		$x['album']=$this->m_album->get_all_album();
		$x['data']=$this->m_tulisan->get_tulisan_by_kode($kode);
		$x['kat']=$this->m_kategori->get_all_kategori();
		$y['title'] = 'Edit Tulisan';
		$this->load->view('admin/v_header',$y);
		$this->load->view('admin/v_sidebar',["side" => 2]);
		$this->load->view('admin/v_edit_tulisan',$x);
	}
	function simpan_tulisan(){
				$config['upload_path'] = './assets/admin/images/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp';
	            $config['max_size'] = 0; //type yang dapat diakses bisa anda sesuaikan
	            // $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/admin/images/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '100%';
	                        $config['width']= 720;
	                        $config['height']= 930;
	                        $config['new_image']= './assets/admin/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();

	                        $gambar=$gbr['file_name'];
							$judul=strip_tags($this->input->post('xjudul'));
							$harga=$this->input->post('xharga');
							$harga_promo=$this->input->post('xhargapromo');
							$filter=str_replace("?", "", $judul);
							$filter2=str_replace("$", "", $filter);
							$slug=strtolower(str_replace(" ", "-", $filter2));
							$isi=$this->input->post('xisi');
							$kategori_id=strip_tags($this->input->post('xkategori'));
							$data=$this->m_kategori->get_kategori_byid($kategori_id);
							$q=$data->row_array();
							$kategori_nama=$q['kategori_nama'];
							$album_id=strip_tags($this->input->post('xalbum'));
							$data1=$this->m_album->get_album_by_kode($album_id);
							$q=$data1->row_array();
							$album_nama=$q['album_nama'];
							$imgslider=$this->input->post('ximgslider');
							$kode=$this->session->userdata('idadmin');
							$user=$this->m_pengguna->get_pengguna_login($kode);
							$p=$user->row_array();
							$user_id=$p['pengguna_id'];
							$user_nama=$p['pengguna_nama'];
							$this->m_tulisan->simpan_tulisan($judul,$isi,$harga,$harga_promo,$kategori_id,$kategori_nama,$album_id,$album_nama,$user_id,$user_nama,$gambar,$slug);
							echo $this->session->set_flashdata('msg','success');
							redirect('Admin/Tulisan');
					}else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('Admin/Tulisan');
	                }
	                 
	            }else{
					redirect('Admin/Tulisan');
				}
				
	}
	
	function update_tulisan(){
				
	            $config['upload_path'] = './assets/admin/images/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp';
	            $config['max_size'] = 0; //type yang dapat diakses bisa anda sesuaikan
	            // $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/admin/images/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '100%';
	                        $config['width']= 720;
	                        $config['height']= 932;
	                        $config['new_image']= './assets/admin/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();

	                        $gambar=$gbr['file_name'];
	                        $tulisan_id=$this->input->post('kode');
	                        $judul=strip_tags($this->input->post('xjudul'));
	                        $harga=$this->input->post('xharga');
	                        $harga_promo=$this->input->post('xhargapromo');
	                        $filter=str_replace("?", "", $judul);
							$filter2=str_replace("$", "", $filter);
							$slug=strtolower(str_replace(" ", "-", $filter2));
							$isi=$this->input->post('xisi');
							$kategori_id=strip_tags($this->input->post('xkategori'));
							$data=$this->m_kategori->get_kategori_byid($kategori_id);
							$q=$data->row_array();
							$kategori_nama=$q['kategori_nama'];
							$album_id=strip_tags($this->input->post('xalbum'));
							$data1=$this->m_album->get_album_by_kode($album_id);
							$q=$data1->row_array();
							$album_nama=$q['album_nama'];
							$imgslider=$this->input->post('ximgslider');
							$kode=$this->session->userdata('idadmin');
							$user=$this->m_pengguna->get_pengguna_login($kode);
							$p=$user->row_array();
							$user_id=$p['pengguna_id'];
							$user_nama=$p['pengguna_nama'];
							$this->m_tulisan->update_tulisan($tulisan_id,$judul,$isi,$harga,$harga_promo,$kategori_id,$kategori_nama,$album_id,$album_nama,$user_id,$user_nama,$gambar,$slug);
							echo $this->session->set_flashdata('msg','info');
							redirect('Admin/Tulisan');
	                    
	                }else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('Admin/Tulisan');
	                }
	                
	            }else{
							$tulisan_id=$this->input->post('kode');
							$judul=strip_tags($this->input->post('xjudul'));
							$harga=$this->input->post('xharga');
							$harga_promo=$this->input->post('xhargapromo');;
							$filter=str_replace("?", "", $judul);
							$filter2=str_replace("$", "", $filter);
							$slug=strtolower(str_replace(" ", "-", $filter2));
							$isi=$this->input->post('xisi');
							$kategori_id=strip_tags($this->input->post('xkategori'));
							$data=$this->m_kategori->get_kategori_byid($kategori_id);
							$q=$data->row_array();
							$kategori_nama=$q['kategori_nama'];
							$album_id=strip_tags($this->input->post('xalbum'));
							$data1=$this->m_album->get_album_by_kode($album_id);
							$q=$data1->row_array();
							$album_nama=$q['album_nama'];
							$imgslider=$this->input->post('ximgslider');
							$kode=$this->session->userdata('idadmin');
							$user=$this->m_pengguna->get_pengguna_login($kode);
							$p=$user->row_array();
							$user_id=$p['pengguna_id'];
							$user_nama=$p['pengguna_nama'];
							$this->m_tulisan->update_tulisan_tanpa_img($tulisan_id,$judul,$isi,$harga,$harga_promo,$kategori_id,$kategori_nama,$album_id,$album_nama,$user_id,$user_nama,$slug);
							echo $this->session->set_flashdata('msg','info');
							redirect('Admin/Tulisan');
	            } 

	}

	function hapus_tulisan(){
		$kode=$this->input->post('kode');
		$gambar=$this->input->post('gambar');
		$path='./assets/images/'.$gambar;
		unlink($path);
		$this->m_tulisan->hapus_tulisan($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('Admin/Tulisan');
	}

}
<?php
class Galeri extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('Administrator');
            redirect($url);
        };
		$this->load->model('m_album');
		$this->load->model('m_galeri');
		$this->load->model('m_pengguna');
		$this->load->library('upload');
	}


	function index(){
		
		$x['data']=$this->m_galeri->get_all_galeri();
		$x['alb']=$this->m_album->get_all_album();
		$y['title'] = 'Galeri';
		$this->load->view('admin/v_header',$y);
		$this->load->view('admin/v_sidebar',["side" => 7]);
		$this->load->view('admin/v_galeri',$x);
	}
	
	function simpan_galeri(){
				$config['upload_path'] = './assets/admin/images/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp';
	            $config['max_size']             = 0; //type yang dapat diakses bisa anda sesuaikan
	            // 	 //nama yang terupload nantinya

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
	                        // $config['width']= 520;
	                        // $config['height']= 450;
	                        $config['new_image']= './assets/admin/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();

	                        $gambar=$gbr['file_name'];
	                        $judul=strip_tags($this->input->post('xjudul'));
	                        $deskripsi=$this->input->post('xdeskripsi');
							$album=strip_tags($this->input->post('xalbum'));
							$kode=$this->session->userdata('idadmin');
							$user=$this->m_pengguna->get_pengguna_login($kode);
							$p=$user->row_array();
							$user_id=$p['pengguna_id'];
							$user_nama=$p['pengguna_nama'];
							$this->m_galeri->simpan_galeri($judul,$deskripsi,$album,$user_id,$user_nama,$gambar);
							echo $this->session->set_flashdata('msg','success');
							redirect('Admin/Galeri');
					}else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('Admin/Galeri');
	                }
	                 
	            }else{
					redirect('Admin/Galeri');
				}
				
	}
	
	function update_galeri(){
				
	            $config['upload_path'] = './assets/admin/images/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp';
	            $config['max_size']             = 0; //type yang dapat diakses bisa anda sesuaikan
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
	                        // $config['width']= 520;
	                        // $config['height']= 450;
	                        $config['new_image']= './assets/admin/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();

	                        $gambar=$gbr['file_name'];
	                        $galeri_id=$this->input->post('kode');
	                        $judul=strip_tags($this->input->post('xjudul'));
	                        $deskripsi=$this->input->post('xdeskripsi');
							$album=strip_tags($this->input->post('xalbum'));
							$images=$this->input->post('gambar');
							$path='./assets/images/'.$images;
							unlink($path);
							$kode=$this->session->userdata('idadmin');
							$user=$this->m_pengguna->get_pengguna_login($kode);
							$p=$user->row_array();
							$user_id=$p['pengguna_id'];
							$user_nama=$p['pengguna_nama'];
							$this->m_galeri->update_galeri($galeri_id,$judul,$deskripsi,$album,$user_id,$user_nama,$gambar);
							echo $this->session->set_flashdata('msg','info');
							redirect('Admin/Galeri');
	                    
	                }else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('Admin/Galeri');
	                }
	                
	            }else{
							$galeri_id=$this->input->post('kode');
	                        $judul=strip_tags($this->input->post('xjudul'));
	                        $deskripsi=$this->input->post('xdeskripsi');
							$album=strip_tags($this->input->post('xalbum'));
							$kode=$this->session->userdata('idadmin');
							$user=$this->m_pengguna->get_pengguna_login($kode);
							$p=$user->row_array();
							$user_id=$p['pengguna_id'];
							$user_nama=$p['pengguna_nama'];
							$this->m_galeri->update_galeri_tanpa_img($galeri_id,$judul,$deskripsi,$album,$user_id,$user_nama);
							echo $this->session->set_flashdata('msg','info');
							redirect('Admin/Galeri');
	            } 

	}

	function hapus_galeri(){
		$kode=$this->input->post('kode');
		$album=$this->input->post('album');
		$gambar=$this->input->post('gambar');
		$path='./assets/images/'.$gambar;
		unlink($path);
		$this->m_galeri->hapus_galeri($kode,$album);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('Admin/Galeri');
	}

}
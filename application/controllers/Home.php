<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct(){
		parent::__construct();
        $this->load->model('m_tulisan');
		$this->load->model('m_pengunjung');
		$this->load->model('m_galeri');
		$this->load->model('m_album');
		$this->load->model('m_kontak');
		$this->load->model('m_pengguna');
        $this->m_pengunjung->count_visitor();
	}

	public function index()
	{
		$x['header']=$this->m_tulisan->get_tulisan_by_kategori12(26);
		$x['items_first']=$this->m_tulisan->get_tulisan_by_kategori_withlimit(27,1);
		$x['items'] = $this->m_tulisan->get_tulisan_by_kategori(27);
		$x['Price'] = $this->m_tulisan->get_tulisan_by_kategori_withlimit(28,4);
		$z['footer'] = $this->m_tulisan->get_tulisan_by_kategori_withlimit(30,1);
		$z['WhatsApp'] = $this->m_pengguna->get_pengguna_login(1);
		$x['items_gallery'] = $this->m_galeri->get_galeri_by_album_id(38);
		$y['title']= 'Home';
		$this->load->view('v_header',$y);
		$this->load->view('v_home2',$x);
		$this->load->view('v_footer',$z);
	}

	function detail($slug){
		$data=$this->m_tulisan->get_berita_by_slug($slug);
		$q=$data->row_array();
		$kode=$q['tulisan_album_id'];
		$title=$q['tulisan_judul'];
		$x['deskripsi']=$this->m_tulisan->get_berita_by_slug($slug);
		$x['gambar']=$this->m_galeri->get_galeri_by_album_id($kode);
		$x['items'] = $this->m_tulisan->get_tulisan_by_kategori_withlimit(27,7);
		$x['Price'] = $this->m_tulisan->get_tulisan_by_kategori_withlimit(28,4);
		$z['footer'] = $this->m_tulisan->get_tulisan_by_kategori_withlimit(30,1);
		$z['WhatsApp'] = $this->m_pengguna->get_pengguna_login(1);
		$y['title']= $title;
		$this->load->view('v_header2',$y);
		$this->load->view('v_detail_mobil',$x);
		$this->load->view('v_footer',$z);
	}
	
	function kirim_pesan(){
        $nama=str_replace("'", "", $this->input->post('name',TRUE));
        $email=str_replace("'", "", $this->input->post('email',TRUE));      
        $pesan=str_replace("'", "", $this->input->post('message',TRUE));
        $this->m_kontak->kirim_pesan($nama,$email,$pesan);
        echo $this->session->set_flashdata('msg',' <p>NB: </strong> Terima Kasih Telah Menghubungi Kami.</p>');
        redirect('#contact-map');
    }
}

<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct(){
		parent::__construct();
        $this->load->model('m_tulisan');
		$this->load->model('m_pengunjung');
		$this->load->model('m_galeri');
		$this->load->model('m_kontak');
        $this->m_pengunjung->count_visitor();
	}

	public function index()
	{
		$x['header']=$this->m_tulisan->get_tulisan_by_kategori_withlimit(26,1);
		$x['items_first']=$this->m_tulisan->get_tulisan_by_kategori_withlimit(27,1);
		$x['items'] = $this->m_tulisan->get_tulisan_by_kategori(27);
		$x['Price'] = $this->m_tulisan->get_tulisan_by_kategori12(28);
		$x['footer'] = $this->m_tulisan->get_tulisan_by_kategori_withlimit(29,1);
		$x['items_gallery'] = $this->m_galeri->get_galeri_by_album_id(38);
		$this->load->view('v_home',$x);
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

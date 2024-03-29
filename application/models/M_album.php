<?php
class M_album extends CI_Model{

	function get_all_album(){
		$hsl=$this->db->query("SELECT tbl_album.*,DATE_FORMAT(album_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_album ORDER BY album_id DESC");
		return $hsl;
	}
	function simpan_album($album,$user_id,$user_nama,$gambar){
		$hsl=$this->db->query("INSERT into tbl_album(album_nama,album_pengguna_id,album_author,album_cover) values ('$album','$user_id','$user_nama','$gambar')");
		return $hsl;
	}
	function get_album_by_kode($kode){
		$hsl=$this->db->query("SELECT tbl_album.*,DATE_FORMAT(album_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_album where album_id='$kode'");
		return $hsl;
	}
	function get_album_by_kode_withlimit($kode,$limit){
		$hsl=$this->db->query("SELECT tbl_album.*,DATE_FORMAT(album_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_album where album_id='$kode' limit $limit" );
		return $hsl;
	}
	function update_album($album_id,$album_nama,$user_id,$user_nama,$gambar){
		$hsl=$this->db->query("UPDATE tbl_album set album_nama='$album_nama',album_pengguna_id='$user_id',album_author='$user_nama',album_cover='$gambar' where album_id='$album_id'");
		return $hsl;
	}
	function update_album_tanpa_img($album_id,$album_nama,$user_id,$user_nama){
		$hsl=$this->db->query("UPDATE tbl_album set album_nama='$album_nama',album_pengguna_id='$user_id',album_author='$user_nama' where album_id='$album_id'");
		return $hsl;
	}
	function hapus_album($kode){
		$hsl=$this->db->query("DELETE from tbl_album where album_id='$kode'");
		return $hsl;
	}
	

}
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class tiket extends CI_Controller {

    function __construct(){
        parent::__construct();
        $this->load->model('m_data');
        $this->load->helper('url');
        $this->load->library('form_validation');
    }
	public function index()
	{
        $data['pesawat'] = $this->m_data->tampil_data()->result();
		$this->load->view('index',$data);
	}

    function proses() {
        $nama = $this->input->post('nama');
        $kode = $this->input->post('kode');
        $kelas = $this->input->post('kelas');
        $Jumlah = $this->input->post('Jumlah');
    
        $harga = 0; 
    
        if ($kode == 'GRD') {
            if ($kelas == 'eksekutif') {
                $harga = $this->m_data->get_harga('pesawat', 'ekonomi');
            }
            if ($kelas == 'bisnis') {
                $harga = $this->m_data->get_harga('pesawat', 'bisnis');
            }
            if ($kelas == 'ekonomi') {
                $harga = $this->m_data->get_harga('pesawat', 'ekonomi');
            }
    
            $Total_bayar = $harga * $Jumlah;
    
            $data = array(
                'nama' => $nama,
                'nama_pesawat' => $nama_pesawat,
                'kode' => $kode,
                'kelas' => $kelas,
                'Jumlah' => $Jumlah,
                'Total_bayar' => $Total_bayar
            );
    
            $this->m_data->input_data($data, 'pesawat');
            redirect('pesawat/faktur');
        } else {
            $this->load->view('index');
        }
    }
    
    
}

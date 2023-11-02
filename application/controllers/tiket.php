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

    public function proses() {
        $this->form_validation->set_rules('nama','Nama','required|max_length[50]');
        $this->form_validation->set_rules('kode','Kode','required|max_length[8]');
        $this->form_validation->set_rules('kelas','Kelas','required');
        $this->form_validation->set_rules('jumlah','Jumlah','required');

        if($this->form_validation->run() == TRUE)
        {
            $nama = $this->input->post('nama');
            $kode = $this->input->post('kode');
            $kelas = $this->input->post('kelas');
            $jumlah = $this->input->post('jumlah');
            
            $harga = 0;
            $total_bayar = 0;
            
            if ($kode == 'Garuda') {
                $harga = $this->m_data->get_harga('GRD', $kelas);
            
                $total_bayar = $harga * $jumlah;
            
                $data = array(
                    'nama' => $nama,
                    'nama_pesawat' => 'Garuda', 
                    'kelas' => $kelas,
                    'harga_tiket' => $harga,
                    'jumlah_tiket' => $jumlah,
                    'total' => $total_bayar
                );
            
                $this->m_data->input_data($data, 'pembeli');
                redirect('faktur');
            } elseif($kode == 'Merpati') {
                $harga = $this->m_data->get_harga('MPT', $kelas);
            
                $total_bayar = $harga * $jumlah;
            
                $data = array(
                    'nama' => $nama,
                    'nama_pesawat' => 'Merpati', 
                    'kelas' => $kelas,
                    'harga_tiket' => $harga,
                    'jumlah_tiket' => $jumlah,
                    'total' => $total_bayar
                );
            
                $this->m_data->input_data($data, 'pembeli');
                redirect('faktur');
            } elseif($kode == 'Batavia') {
                $harga = $this->m_data->get_harga('BTV', $kelas);
            
                $total_bayar = $harga * $jumlah;
            
                $data = array(
                    'nama' => $nama,
                    'nama_pesawat' => 'Batavia', 
                    'kelas' => $kelas,
                    'harga_tiket' => $harga,
                    'jumlah_tiket' => $jumlah,
                    'total' => $total_bayar
                );
            
                $this->m_data->input_data($data, 'pembeli');
                $this->load->view('faktur', $data);
            }
        }else{
            $this->load->view('input_data');
        }
    } 
    
}

<?php
class M_data extends CI_model {
    function input_data($data, $table) {
        // Perbaikan disini: Parameter pertama adalah nama tabel, parameter kedua adalah data yang akan dimasukkan
        return $this->db->insert($table, $data);
    }

    function tampil_data() {
        return $this->db->get('pesawat');
    }

    public function get_harga($table, $kelas) {
        $this->db->select('harga_tiket');
        $this->db->where('kelas', $kelas);
        $query = $this->db->get($table);

        if ($query->num_rows() > 0) {
            $row = $query->row();
            return $row->harga_tiket;
        } else {
            return 0; 
        }
    }


}
?>

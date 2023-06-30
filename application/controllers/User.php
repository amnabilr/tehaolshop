<?php

defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_user');
    }


    public function index($offset = 0)
    {
        $data = array(
            'title' => 'Admin',
            'user' => $this->m_user->get_all_data(),
            'isi' => 'v_user',
        );

        $this->load->view('layout/v_wrapper_backend', $data, FALSE);
    }


    public function add()
    {
        $data = array(
            'nama_admin' => $this->input->post('nama_admin'),
            'username' => $this->input->post('username'),
            'password' => $this->input->post('password'),
            'level_admin' => $this->input->post('level_admin'),
        );
        $this->m_user->add($data);
        $this->session->set_flashdata('pesan', 'Data Berhasil Ditambahkan !!!');

        redirect('user');
    }


    public function edit($id_admin = NULL)
    {
        $data = array(
            'id_admin' => $id_admin,
            'nama_admin' => $this->input->post('nama_admin'),
            'username' => $this->input->post('username'),
            'password' => $this->input->post('password'),
            'level_admin' => $this->input->post('level_admin'),
        );
        $this->m_user->edit($data);
        $this->session->set_flashdata('pesan', 'Data Berhasil Diedit !!!');

        redirect('user');
    }


    public function delete($id_admin = NULL)
    {
        $data = array('id_admin' => $id_admin);
        $this->m_user->delete($data);
        $this->session->set_flashdata('pesan', 'Data Berhasil Dihapus !!!');

        redirect('user');
    }
}

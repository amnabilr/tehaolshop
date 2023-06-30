<?php

defined('BASEPATH') or exit('No direct script access allowed');

class User_login
{
    protected $ci;

    public function __construct()
    {
        $this->ci = &get_instance();
        $this->ci->load->model('m_auth');
    }

    public function login($username, $password)
    {
        $cek = $this->ci->m_auth->login_admin($username, $password);
        if ($cek) {
            $nama_admin = $cek->nama_admin;
            $username = $cek->username;
            $level_admin = $cek->level_admin;

            $this->ci->session->set_userdata('username', $username);
            $this->ci->session->set_userdata('nama_admin', $nama_admin);
            $this->ci->session->set_userdata('level_admin', $level_admin);

            redirect('admin');
        } else {

            $this->ci->session->set_flashdata('error', 'Username atau Password Salah');

            redirect('auth/login_admin');
        }
    }

    public function proteksi_halaman()
    {
        if ($this->ci->session->userdata('username') == '') {
            $this->ci->session->set_flashdata('error', 'Anda Belum Login !!!');

            redirect('auth/login_admin');
        }
    }

    public function logout()
    {
        $this->ci->session->unset_userdata('username');
        $this->ci->session->unset_userdata('nama_admin');
        $this->ci->session->unset_userdata('level_admin');
        $this->ci->session->set_flashdata('pesan', 'Anda Berhasil Logout !!!');

        redirect('auth/login_admin');
    }
}

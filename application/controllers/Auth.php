<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

    public function login_admin()
    {
        $this->form_validation->set_rules('username', 'Username', 'required', array(
            'required' => '%s Harus Diisi !!!'
        ));

        $this->form_validation->set_rules('password', 'Password', 'required', array(
            'required' => '%s Harus Diisi !!!'
        ));

        if ($this->form_validation->run() == TRUE) {
            $username = $this->input->post('username');
            $password = $this->input->post('password');
            $this->user_login->login($username, $password);
        }
        $data = array(
            'title' => 'Log in Admin',
        );
        $this->load->view('v_login_admin', $data, FALSE);
    }

    public function logout_admin()
    {
        $this->user_login->logout();
    }
}

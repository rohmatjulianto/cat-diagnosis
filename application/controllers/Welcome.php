<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Welcome extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
		$this->load->helper();

	}

	public function index()
	{
		$data['penyakit_num'] = $this->db->get("penyakit")->num_rows();
		$data['gejala_num'] = $this->db->get("gejala")->num_rows();
		$data['konsultasi_num'] = $this->db->get("konsultasi")->num_rows();
		$data['active'] = "dashboard";
		$this->load->view('pages/header', $data);
		$this->load->view('pages_content/Home', $data);
		$this->load->view('pages/footer');
	}

	public function penyakit()
	{
		$data['active'] = "penyakit";
		$this->load->view('pages/header', $data);
		$data['penyakit'] = $this->db->get("penyakit")->result();
		$this->load->view('pages_content/penyakit', $data);
		$this->load->view('pages/footer');

	}

	public function gejala()
	{
		$data['active'] = "gejala";
		$this->load->view('pages/header', $data);
		$data['gejala'] = $this->db->get("gejala")->result();
		$this->load->view('pages_content/gejala', $data);
		$this->load->view('pages/footer');
	}

	public function konsultasi()
	{
		$data['active'] = "konsultasi";
		$this->load->view('pages/header', $data);
		$data['konsultasi'] = $this->db->get("konsultasi")->result();
		$this->load->view('pages_content/konsultasi', $data);
		$this->load->view('pages/footer');
	}
}
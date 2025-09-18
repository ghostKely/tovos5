<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_Besoin extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('dao_model', 'dao');
    }

 /*  ========================================================================================================================== A PROPOS DE AJOUT DE DEMANDE DE BESOINS */
/* FONCTION DE REDIRECTION VERS LA PAGE D'AJOUT DE BESOIN 
    ARGUMENTS : 
*/
	public function page_AjoutBesoin($checkValidation = 3) {        //initiena 3 par défaut pour la page Validation.php si non erreur
        $data['pageTitle'] = "Ajout Besoin";                        //titre de la page de destination
        $data['pageToLoad'] = "besoin/Besoin_Add";                  //path de a page de destination
        $data['materiels'] = $this->dao->select_all('materiels');   //liste des matériels achetable pour faire les demandes
        $data['checkValidation'] = $checkValidation;                //tableau contenant int de validation avec le message qui lui correspond

		$this->load->view('home/Home', $data);                      //page principale où on load les pages
	}
   
}

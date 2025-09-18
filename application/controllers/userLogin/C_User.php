<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_User extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('dao_model', 'dao');
    }

/*  ========================================================================================================================== */
/* FONCTION POUR VERIFIER AVOIR LA TABLE OU ON PREND LE LOGIN
    ARGUMENTS : 
        .case 1 : login as RH => table rh
        .case 2 : login as manager => table manager
        .case 3 : login as dg => table dg
*/
    public function getTableUser($logAsValue) {
        if ($logAsValue == 1) { return "rh"; }
        else if ($logAsValue == 2) { return "manager"; }
        else if ($logAsValue == 3) { return "dg"; }
    }

/* FONCTION POUR VERIFIER LES INFORMATIONS DE LOGIN
    ARGUMENTS : 
        .$logAsValue : determine la table dans laquelle on va verifier email et mdp
*/
    public function loginAs($logAsValue){
        $data['pageTitle'] = "Connexion";                       //titre de la page de destination
        $data['pageToLoad'] = "userLogin/Login";                //path de a page de destination
        $data['logAsValue'] = $logAsValue;                      //1, 2, 3
		$this->load->view('home/Home', $data);                  //page principale où on load les pages
    }

/* FONCTION POUR RECUPERER LES INFORMATIONS DE LA BASE DE DONNEE */
    public function checkLogs($email, $mdp, $tableUser) {
        $sql = "SELECT *
                FROM ".$tableUser.
                " WHERE email='".$email."'
                 AND mdp='".$mdp."'";                           //requete pour avoir les infromations de user dans BDD
                 var_dump($sql);
        $data['infoUser'] = $this->dao->executeQuery($sql);     //contient les colonnes demandée dans requête
        var_dump($data['infoUser']);
        if (empty($data['infoUser'])) {                         //si vide => erreur authentification (email / mot de passe)
            return false;                                       
        }

        return true;
    }

/* FONCTION D'AUTHENTIFICATION POUR LES USERS
        Vérification de l'email et du mot de passe
*/
    public function authentification() {
        $email = strtolower($this->input->post('emailUser'));       //recup de email de user
        $mdp = $this->input->post('mdpUser');                       //recup de mdp de user
        $logAsValue = $this->input->post('logValue');               //recup de logvalue (1/2/3)
        $tableUser = $this->getTableUser($logAsValue);              //table où se trouve les logs de user

        $userExist = $this->checkLogs($email, $mdp, $tableUser);    //checking des informations user
        if ($userExist === false) {
            $this->session->set_flashdata('checkValidation', [                          //redirect vers page de login + popup de validation de login fail
                'message' => "Erreur d'authentification ! Vérifier vos informations"    //message de validation pour page Validation.php
            ]);
            redirect('userLogin/C_User/loginAs');                   //redirection vers page de login
        }
    }




    
}

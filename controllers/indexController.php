<?php

class indexController extends Controller{

    private $_user;

    public function __construct() {
        parent::__construct();
        $this->_user = $this->loadModel('user');
    }

    public function index(){
        $this->_view->users = $this->_user->getLastUsers();
        $this->_view->titulo = 'Portada';
        $this->_view->render('index');
    }

}
?>
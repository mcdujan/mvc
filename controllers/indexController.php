<?php

class indexController extends Controller{

    public function __construct() {
        parent::__construct();
    }

    public function index(){

        $user = $this->loadModel('user');
               
        $this->_view->titulo = 'Portada';
        $this->_view->render('index');
    }

}
?>
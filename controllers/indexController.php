<?php

class indexController extends Controller{

    private $_user;
    private $_order;

    public function __construct() {
        parent::__construct();
        $this->_user  = $this->loadModel('user');
        $this->_order = $this->loadModel('order');
    }

    public function index(){
        $this->_view->users  = $this->_user->getLastUsers();
        $this->_view->orders = $this->_order->getLastOrders();
        $this->_view->titulo = 'Portada';
        $this->_view->render('index');
    }

}
?>
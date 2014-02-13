<?php

class orderController extends Controller {
    private $_order;

    public function __construct () {
        parent::__construct();
        $this->_order = $this->loadModel('order');
    }

    public function index() {
        //cuerpo
    }

    public function view($orderid) {
        $this->_view->order  = $this->_order->getOrderById($orderid);
        $this->_view->title = "Vista del usuario";
        $this->_view->render('view');
    }
}
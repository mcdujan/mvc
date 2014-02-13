<?php

class orderController extends Controller {
    private $_order;

    public function __construct () {
        parent::__construct();
        $this->_order = $this->loadModel('order');
    }

    public function index() {
        $this->_view->orders = $this->_order->getOrders();
        $this->_view->title  = "Lista de pedidos";
        $this->_view->render('index');
    }

    public function view($orderid) {
        $this->_view->order = $this->_order->getOrderById($orderid);
        $this->_view->title = "Vista del usuario";
        $this->_view->render('view');
    }
}
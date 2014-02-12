<?php

class productController extends Controller {

    private $_product;

    public function __construct () {
        parent::__construct();
        $this->_product = $this->loadModel('product');
    }

    public function index(){
        $this->_view->product = $this->_product->getProducts();
        $this->_view->title   = "Lista de productos";
        $this->_view->render('index');
    }
}
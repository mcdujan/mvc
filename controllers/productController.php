<?php

class productController extends Controller {

    private $_product;

    public function __construct () {
        parent::__construct();
        $this->_product = $this->loadModel('product');
    }
}
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

    public function view($productid){
        $this->_view->product = $this->_product->getProductsById($productid);
        $this->_view->title   = "Vista de productos";
        $this->_view->render('view');
    }

    public function add() {
        if (!empty($_POST) && $_POST['submit'] === 'Nuevo Producto') {
            $this->_product->addProduct();
            $this->redirect('product');
        }
        else {
            $this->_view->title = "Nuevo producto";
            $this->_view->render('add');
        }
    }

    public function edit($productid) {
        if(empty($productid)) {
            $this->redirect('product');
        }
        if (!empty($_POST) && $_POST['submit'] === 'Editar') {
            $this->_product->editProduct($productid);
            $this->redirect('product/view/'.$productid);
        }
        else {
            $this->_view->product = $this->_product->getProductsById($productid);
            $this->_view->title   = "Editar producto";
            $this->_view->render('edit');
        }
    }

    public function delete($productid) {
        $this->_view->product = $this->_product->deleteProduct($productid);
        $this->redirect('product');
    }

}
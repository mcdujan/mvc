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

    public function add() {
        if (!empty($_POST) && $_POST['submit'] === 'Nuevo Pedido') {
            $this->_order->add();
            $this->redirect('order/addproduct/' . $this->_order->id);
        }
        else {
            $this->_user    = $this->loadModel('user');
            
            $this->_view->users    = $this->_user->getUsers();
            $this->_view->title    = "Nuevo pedido";
            $this->_view->render('add');
        }
    }

    public function addproduct($orderid = 0) {
        if(!empty($_POST) && $_POST['submit'] === 'Anadir Producto') {
            $this->_order->addProduct();
            $this->redirect('order/view/' . $_POST['id_pedido']);
        }
        else {
        $this->_product = $this->loadModel('product');

        $this->_view->orderid = $orderid;
        $this->_view->product = $this->_product->getProducts();
        $this->_view->render('addproduct');
        }
   
    }

    public function delete($id) {
        $this->_order->deleteOrder($id);
        $this->redirect('order');
    }

    public function userorders($userid) {
        $this->_view->orders = $this->_order->getOrdersByUser($userid);
        $this->_view->title  = "Pedidos de usuario";
        $this->_view->render('userorders');
    }
}
<?php

class userController extends Controller {
    
    private $_user;

    public function __construct () {
        parent::__construct();
        $this->_user = $this->loadModel('user');
    }

    public function index(){
        $this->_view->users = $this->_user->getUsers();
        $this->_view->userOrder = $this->_user->getOrders();
        $this->_view->title = "Lista de usuarios";
        $this->_view->render('index');
    }

    public function view($userid) {
        $this->_view->user  = $this->_user->getUserById($userid);
        $this->_view->title = "Vista del usuario";
        $this->_view->render('view');
    }

    public function add() {
        if (!empty($_POST) && $_POST['submit'] === 'Nuevo Usuario') {
            $this->_user->addUser();
            $this->redirect('user');
        }
        else {
            $this->_view->title = "Nuevo usuario";
            $this->_view->render('add');
        }
    }

    public function edit($userid) {
        if(empty($userid)) {
            $this->redirect('user');
        }
        if (!empty($_POST) && $_POST['submit'] === 'Editar') {
            $this->_user->editUser($userid);
            $this->redirect('user/view/'.$userid);
        }
        else {
            $this->_view->user  = $this->_user->getUserById($userid);
            $this->_view->title = "Editar usuario";
            $this->_view->render('edit');
        }
    }

    public function delete($userid) {
        $this->_user->deleteUser($userid);
        $this->redirect('user');
    }
}
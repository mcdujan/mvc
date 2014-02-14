<?php

class userController extends Controller {
    
    private $_user;

    public function __construct () {
        parent::__construct();
        $this->_user = $this->loadModel('user');
    }

    /**
     * Crea la vista index de usuarios
     */
    public function index(){
        $this->_view->users     = $this->_user->getUsers();
        $this->_view->userOrder = $this->_user->getOrders();
        $this->_view->title     = "Lista de usuarios";
        $this->_view->render('index');
    }

    /**
     * Crea la vista del usuario en función de su id
     * @param  int $userid id del usuario
     */
    public function view($userid) {
        $this->_view->user  = $this->_user->getUserById($userid);
        $this->_view->title = "Vista del usuario";
        $this->_view->render('view');
    }

    /**
     * Añade un nuevo usuario
     */
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

    /**
     * Permite editar un usuario en función de su id
     *@param int $userid id del usuario
     */
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

    /**
     * Borra el usuario en función de su id
     * @param  int $usertid id del usuario
     */
    public function delete($userid) {
        $this->_user->deleteUser($userid);
        $this->redirect('user');
    }
}
<?php

class userController extends Controller {
    
    private $_user;

    public function __construct () {
        parent::__construct();
        $this->_user = $this->loadModel('user');
    }

    public function index(){
        $this->_view->users = $this->_user->getUsers();
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
            // Entonces añadimos usuario
            $this->_user->addUser();
            $this->redirect('user');
        }
        else {
            //Sino mostramos formulario
            $this->_view->title = "Nuevo usuario";
            $this->_view->render('add');
        }
    }

    public function edit($userid) {

        if(empty($userid)) {
            $this->redirect('user');
        }
        // OJO con esto, que hay que seguir varios pasos antes de llamar al edit
        // Voy a hacer unas pruebas
        if (!empty($_POST) && $_POST['submit'] === 'Editar') {
            // Entonces editamos
            // Hay que preparar los valores para pasar al modelo
            $this->_user->editUser($userid);
            $this->redirect('user/view/'.$userid);
        }
        else {
            // Entonces cargamos datos de la base de datos
            $this->_view->user  = $this->_user->getUserById($userid);
            $this->_view->title = "Editar usuario";
            $this->_view->render('edit');
        }
    }

    public function delete($userid) {
        $this->_view->users = $this->_user->deleteUser($userid);
        //Retornamos al index
        $this->redirect('user');
    }
}
<?php

class userController extends Controller {
    
    public function __construct () {
        parent::__construct();
    }

    public function index(){

        $user = $this->loadModel('user');

        $this->_view->users = $user->getUsers();
        $this->_view->title = "Lista de usuarios";
        $this->_view->render('index');

    }

    public function view($userid) {

        $user = $this->loadModel('user');

        $this->_view->user = $user->getUserById($userid);
        $this->_view->title = "Vista del usuario";
        $this->_view->render('view');
    }

    public function edit($userid) {

    }

    public function delete($userid) {
        $user = $this->loadModel('user');

        $this->_view->users = $user->deleteUser();
        $this->_view->title = "Lista de usuarios";
        $this->_view->render('index');
    }
}
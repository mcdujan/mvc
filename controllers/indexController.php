<?php

class indexController extends Controller{

    public function __construct () {
        parent::__construct();
    }

    public function index(){

        $post = $this->loadModel('post');

        $this->_view->posts = $post->getPosts();

        $this->_view->render('index');

    }


}

?>
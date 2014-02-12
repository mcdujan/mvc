<?php

class postModel extends Model{

    public function __construct(){
        parent::__construct();
    }

    public function getPosts(){
        $post = $this->_db->query('SELECT * FROM CONTACTO');
        return $post->fetchall();
    }
}


?>
<?php

class productModel extends Model {
    public function __construct(){
        parent::__construct();
    }

    public function getProducts(){
        $user = $this->_db->query('SELECT * FROM productos');
        return $user->fetchall();
    }
}
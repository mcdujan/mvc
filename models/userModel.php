<?php

class userModel extends Model {
    public function __construct(){
        parent::__construct();
    }

    public function getUsers(){
        $user = $this->_db->query('SELECT * FROM usuarios');
        return $user->fetchall();
    }

    public function getUserById($id) {
        // Preparar el statement usando bien PDO
        $user = $this->_db->query("SELECT * FROM usuarios WHERE id=$id");
        return array_shift($user->fetchall());
    }
}
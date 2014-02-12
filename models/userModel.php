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
        $user = $this->_db->prepare("SELECT * FROM usuarios WHERE id=?");
        $user->bindParam(1, $id, PDO::PARAM_INT);
        $user->execute();
        return array_shift($user->fetchall());
    }
}
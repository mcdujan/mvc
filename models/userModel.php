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
<<<<<<< HEAD
        // Preparar el statement usando bien PDO
        $user = $this->_db->query("SELECT * FROM usuarios WHERE id=$id");
        $user = array_shift($user->fetchall());
        return $user;
=======
        $user = $this->_db->prepare("SELECT * FROM usuarios WHERE id=?");
        $user->bindParam(1, $id, PDO::PARAM_INT);
        $user->execute();
        return array_shift($user->fetchall());
>>>>>>> 32ea74a80e14b59d66e108150eef78a878259ba8
    }
}
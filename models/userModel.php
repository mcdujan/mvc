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

    public function editUser($id){
        // Hay que pasarle los valores, porque ahora mismo esas variables no existen
        $user = $this->_db->prepare("UPDATE usuarios SET dni = '$dni', 
                                        nombre = '$nombre',
                                        apellidos = '$apellidos'
                                        WHERE id=?");
        $user->bindParam(1, $id, PDO::PARAM_INT);
        $user->execute();
    }

    public function deleteUser($id){
        $user = $this->_db->prepare("DELETE FROM usuarios WHERE id=?");
        $user->bindParam(1, $id, PDO::PARAM_INT);
        $user->execute();
    }
}
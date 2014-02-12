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

    public function addUser() {
        $user = $this->_db->prepare("INSERT INTO usuarios (dni, nombre, apellidos) 
                                    values (?, ?, ?)");
        $datos = filter_input_array(INPUT_POST, $_POST);

        $user->bindParam(1, $datos['dni'], PDO::PARAM_STR);
        $user->bindParam(2, $datos['nombre'], PDO::PARAM_STR);
        $user->bindParam(3, $datos['apellidos'], PDO::PARAM_STR);
        $user->execute();

    }

    public function editUser($id){
        // Hay que pasarle los valores, porque ahora mismo esas variables no existen
        $user = $this->_db->prepare("UPDATE usuarios SET
                                    dni       = ?, 
                                    nombre    = ?,
                                    apellidos = ?
                                    WHERE id  = ?");
        
        $datos = filter_input_array(INPUT_POST, $_POST);

        $user->bindParam(1, $datos['dni'], PDO::PARAM_STR);
        $user->bindParam(2, $datos['nombre'], PDO::PARAM_STR);
        $user->bindParam(3, $datos['apellidos'], PDO::PARAM_STR);
        $user->bindParam(4, $id, PDO::PARAM_INT);
        $user->execute();
    }

    public function deleteUser($id){
        $user = $this->_db->prepare("DELETE FROM usuarios WHERE id=?");
        $user->bindParam(1, $id, PDO::PARAM_INT);
        $user->execute();
    }
}
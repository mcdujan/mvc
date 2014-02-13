<?php

class userModel extends Model {
    public function __construct(){
        parent::__construct();
    }

    public function getUsers(){
        $user = $this->_db->query('SELECT * FROM usuarios');
        return $user->fetchall(PDO::FETCH_ASSOC);
    }

    public function getUserById($id) {
        $user = $this->_db->prepare("SELECT * FROM usuarios WHERE id = ?");
        $user->bindParam(1, $id, PDO::PARAM_INT);
        $user->execute();
        return array_shift($user->fetchall());
    }

    public function addUser() {
        $user = $this->_db->prepare("INSERT INTO 
                                    usuarios (dni, nombre, apellidos) 
                                    VALUES 
                                    (:dni, :nombre, :apellidos)");

        $datos = filter_input_array(INPUT_POST, $_POST);
        $user->bindParam(':dni', $datos['dni'], PDO::PARAM_STR);
        $user->bindParam(':nombre', $datos['nombre'], PDO::PARAM_STR);
        $user->bindParam(':apellidos', $datos['apellidos'], PDO::PARAM_STR);
        $user->execute();
    }

    public function editUser($id){
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

    public function getLastUsers() {
        $user = $this->_db->query("SELECT id, nombre
                                  FROM usuarios
                                  ORDER BY id DESC
                                  LIMIT 3"); 
        return $user->fetchall();
    }

    public function getOrders() {
        $user = $this->_db->query("SELECT usuarios.id
                                    FROM usuarios, pedidos
                                    WHERE usuarios.id = pedidos.id_usuario");
        $userOrders = array();
        foreach ($user->fetchall(PDO::FETCH_ASSOC) as $key => $value) {
            array_push($userOrders, $value['id']);
        }
        return $userOrders;
    }
}
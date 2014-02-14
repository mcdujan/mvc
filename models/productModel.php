<?php

class productModel extends Model {
    public function __construct(){
        parent::__construct();
    }

    /**
     * Devuelve todos los productos
     * @return array Datos de todos los productos
     */
    public function getProducts(){
        $user = $this->_db->query('SELECT * FROM productos');
        return $user->fetchall();
    }

    /**
     * Devuelve un producto usando su id
     * @param  int $id id del producto
     * @return array Datos del producto para la id especifica
     */
    public function getProductsById($id) {
        $user = $this->_db->prepare("SELECT * FROM productos WHERE id = ?");
        $user->bindParam(1, $id, PDO::PARAM_INT);
        $user->execute();
        return array_shift($user->fetchall());
    }

    /**
     * Añade un nuevo producto
     */
    public function addProduct() {
        $user = $this->_db->prepare("INSERT INTO 
                                    productos (nombre, precio) 
                                    VALUES 
                                    (:nombre, :precio)");

        $datos = filter_input_array(INPUT_POST, $_POST);
        $user->bindParam(':nombre', $datos['nombre'], PDO::PARAM_STR);
        $user->bindParam(':precio', $datos['precio'], PDO::PARAM_STR);
        $user->execute();
    }

    /**
     * Edita un producto
     * @param  int $id id del producto a editar
     */
    public function editProduct($id){
        $user = $this->_db->prepare("UPDATE productos SET
                                    nombre    = ?,
                                    precio = ?
                                    WHERE id  = ?");
        
        $datos = filter_input_array(INPUT_POST, $_POST);

        $user->bindParam(1, $datos['nombre'], PDO::PARAM_STR);
        $user->bindParam(2, $datos['precio'], PDO::PARAM_STR);
        $user->bindParam(3, $id, PDO::PARAM_INT);
        $user->execute();
    }

    /**
     * Elimina un producto
     * @param  int $id id del producto a eliminar
     */
    public function deleteProduct($id){
        $user = $this->_db->prepare("DELETE FROM productos WHERE id=?");
        $user->bindParam(1, $id, PDO::PARAM_INT);
        $user->execute();
    }
}
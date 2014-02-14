<?php

class orderModel extends Model {
    public function __construct () {
        parent::__construct();
    }

    public function getOrders() {
        $user = $this->_db->query('SELECT * FROM pedidos');
        return $user->fetchall();
    }

    public function getOrderById($id) {
        $order = $this->_db->prepare(
               "SELECT 
                pedidos.id, pedidos.referencia, pedidos_productos.cantidad,
                usuarios.nombre as usuario, usuarios.id as usuario_id,
                productos.nombre, productos.precio,
                (pedidos_productos.cantidad * productos.precio) AS precio_total
                
                FROM    pedidos, pedidos_productos, productos, usuarios
                WHERE   pedidos_productos.id_pedido = ?
                AND     pedidos.id = ?
                AND     pedidos_productos.id_producto = productos.id
                AND     usuarios.id = pedidos.id_usuario"
                );
        $order->bindParam(1, $id, PDO::PARAM_INT);
        $order->bindParam(2, $id, PDO::PARAM_INT);
        $order->execute();
        return $order->fetchall(PDO::FETCH_ASSOC);
    }

    public function getOrdersByUser($userid) {
        $order = $this->_db->prepare("SELECT usuarios.id as usuario_id, nombre, pedidos.id, referencia 
                                     FROM pedidos, usuarios 
                                     WHERE id_usuario = usuarios.id 
                                     AND usuarios.id = ?");
        $order->bindParam(1, $userid, PDO::PARAM_INT);
        $order->execute();
        return $order->fetchall(PDO::FETCH_ASSOC);
    }

    public function getLastOrders() {
        $order = $this->_db->query("SELECT *
                                  FROM pedidos
                                  ORDER BY id DESC
                                  LIMIT 3"); 
        return $order->fetchall(PDO::FETCH_ASSOC);
    }

    public function addProduct() {
        $user = $this->_db->prepare("INSERT INTO 
                            pedidos_productos (id_pedido, id_producto, cantidad) 
                            VALUES 
                            (:id_pedido, :id_producto, :cantidad)");

        $datos = filter_input_array(INPUT_POST, $_POST);
        $user->bindParam(':id_pedido', $datos['id_pedido'], PDO::PARAM_INT);
        $user->bindParam(':id_producto', $datos['id_producto'], PDO::PARAM_INT);
        $user->bindParam(':cantidad', $datos['cantidad'], PDO::PARAM_INT);
        $user->execute();
    }

    /*public function getRef(){
        $letters="ABCDEFGIJKLMNOPQRSTUVWXYZ";
        $ref = '';
        $max = strlen($letters)-1;
        for($i=0; $i<6; $i++){
            $str .=$letters[rand($max)];
        }
        return $str;
    }*/

    public function addOrder() {
        $user = $this->_db->prepare("INSERT INTO 
                            pedidos (referencia, usuario) 
                            VALUES 
                            (:referencia, :usuario)");
        
        $letters="ABCDEFGIJKLMNOPQRSTUVWXYZ";
        $ref = '';
        $max = strlen($letters)-1;
        for($i=0; $i<6; $i++){
            $str .= $letters[rand($max)];
        }
        $referencia = $str;

        $datos = filter_input_array(INPUT_POST, $_POST);
        $user->bindParam(':referencia', $referencia, PDO::PARAM_STR);
        $user->bindParam(':usuario', $datos['usuario'], PDO::PARAM_INT);
        $user->execute();
    }



    public function deleteOrder($id) {
        $order = $this->_db->prepare("DELETE pedidos.*, pedidos_productos.*
                                     FROM pedidos, pedidos_productos 
                                     WHERE pedidos.id = ? 
                                     AND pedidos_productos.id_pedido = ?");
        $order->bindParam(1, $id, PDO::PARAM_INT);
        $order->bindParam(2, $id, PDO::PARAM_INT);
        $order->execute();
    }
}
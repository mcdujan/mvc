<?php

class orderModel extends Model {
    public function __construct () {
        parent::__construct();
    }

    public function getOrderById($id) {
        $order = $this->_db->prepare(
               "SELECT pedidos.referencia, productos.nombre, pedidos_productos.cantidad, (pedidos_productos.cantidad * productos.precio) AS precio
                FROM pedidos, pedidos_productos, productos
                WHERE pedidos_productos.id_pedido = ?
                AND pedidos_productos.id_producto = productos.id"
               // "SELECT * FROM pedidos WHERE id = ?"                    
            );
        $order->bindParam(1, $id, PDO::PARAM_INT);
        $order->execute();
        return $order->fetchall(PDO::FETCH_ASSOC);
    }
}
<?php

class Model {

    protected $_db;

    /**
     * Construccion del Modelo y solicitud de una instancia de la base de datos
     */
    public function __construct() {
        $this->_db = new Database();
    }
}
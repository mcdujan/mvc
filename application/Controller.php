<?php

abstract class Controller {

    protected $_view;

    public function __construct () {
        $this->_view = new View(new Request);
    }

    abstract public function index();

    protected function loadModel($model) {
        $model = $model . 'Model';
        $pathModel = ROOT . 'models' . DS . $model . '.php';

        if(is_readable($pathModel)) {
            require_once $pathModel;
            $model = new $model;
            return $model;
        }
        else {
            throw new Exception("Error de Modelo");
        }
    }
}
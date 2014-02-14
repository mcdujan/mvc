<?php

abstract class Controller {

    protected $_view;

    public function __construct () {
        $this->_view = new View(new Request);
    }

    /**
     * Index necesario para todos los controladores
     */
    abstract public function index();

    /**
     * Carga el modelo asociado al controlador
     * @param  string $model Modelo que queremos cargar
     * @return Model Devuelve el modelo solicitado
     */
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

    /**
     * Redirige a una url 
     * @param  boolean $path [description]
     */
    protected function redirect($path = false) {
        if($path) {
            header('Location: ' . BASE_URL . $path);
            exit;
        }
        header('Location:' . BASE_URL);
    }
}
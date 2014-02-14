<?php

class View {

    private $_controller;

    /**
     * Carga el controlador asociado a la vista
     * @param Request $request
     */
    public function __construct (Request $request) {
        $this->_controller = $request->getController();
    }

    /**
     * Carga la vista solicitada
     * @param  string  $view Vista que queremos cargar
     */
    public function render($view) {
        $menu = array(
            array(
                'id'    => 'inicio',
                'title' => 'Inicio',
                'url'   => BASE_URL
                ),
            array(
                'id'    => 'usuarios',
                'title' => 'Usuarios',
                'url'   => BASE_URL . 'user/'
                ),
            array(
                'id'    => 'pedidos',
                'title' => 'Pedidos',
                'url'   => BASE_URL . 'order/'
                ),
            array(
                'id'    => 'productos',
                'title' => 'Productos',
                'url'   => BASE_URL . 'product/'
                ),
            );

        $layoutParams = array(
            'css_path' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/css',
            'img_path' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/img',
            'js_path'  => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/js',
            'menu'     => $menu);

        $pathView = ROOT . 'views' . DS . $this->_controller . DS . $view . '.phtml';

        if(is_readable($pathView)) {
            include_once ROOT . 'views' . DS . 'layout' . DS . DEFAULT_LAYOUT . DS . 'header.php';
            include_once $pathView; 
            include_once ROOT . 'views' . DS . 'layout' . DS . DEFAULT_LAYOUT . DS . 'footer.php';
        }
        else {
            throw new Exception('La vista no se ha cargado');
        }
    }
}
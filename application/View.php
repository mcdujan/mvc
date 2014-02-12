<?php

class View {

    private $_controller;

    public function __construct (Request $request) {
        $this->_controller = $request->getController();
    }

    public function render($view, $item = false) {
        $layoutParams = array(
            'css_path' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/css',
            'img_path' => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/img',
            'js_path'  => BASE_URL . 'views/layout/' . DEFAULT_LAYOUT . '/js');

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
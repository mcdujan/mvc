<?php

class Request{

    private $_controller;
    private $_method;
    private $_arguments;

    /**
     * Captura la URL solicitada y prepara el sistema MVC
     */
    public function __construct() {
        if(isset($_GET['url'])) {
            $url = filter_input(INPUT_GET, 'url', FILTER_SANITIZE_URL);
            $url = explode('/', $url);
            $url = array_filter($url);

            $this->_controller = strtolower(array_shift($url));
            $this->_method     = strtolower(array_shift($url));
            $this->_arguments  = $url;
        }

        if(!$this->_controller) {
            $this->_controller = DEFAULT_CONTROLLER;
        }

        if(!$this->_method) {
            $this->_method = 'index';
        }

        if(!isset($this->_arguments)) {
            $this->_arguments = array();
        }
    }

    /**
     * Devuelve el controlador solicitado por url
     * @return string Controlador solicitado
     */
    public function getController() {return $this->_controller;}

    /**
     * Devuelve el metodo solicitado por url
     * @return string Controlador solicitado
     */
    public function getMethod() {return $this->_method;}
    
    /**
     * Devuelve los argumentos pasados por la url
     * @return array Argumentos solicitados
     */
    public function getArgs() {return $this->_arguments;}
}
<?php

class Bootstrap {

    /**
     * Monta el sistema MVC de la web
     * @param  Request $request
     */
    public static function run(Request $request) {

        $controller     = $request->getController() . 'Controller';
        $pathController = ROOT . 'controllers' . DS . $controller . '.php';
        $method         = $request->getMethod();
        $args           = $request->getArgs();

        if(is_readable($pathController)) {
            require_once $pathController;

            $controller = new $controller;

            if(!is_callable(array($controller, $method))) {
                $method = 'index';
            }

            if(isset($args)) {
                call_user_func_array(array($controller, $method), $args);
            }
            else {
                call_user_func(array($controller, $method));
            }
        }
        else {
            throw new Exception("No encontrado");
        }
    }
}
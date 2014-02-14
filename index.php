<?php

/*
    Constantes para definir la estructura de archivos
 */
defined('DS')       ? null : define('DS', DIRECTORY_SEPARATOR);
defined('ROOT')     ? null : define('ROOT', realpath(dirname(__FILE__)) . DS);
defined('APP_PATH') ? null : define('APP_PATH', ROOT . 'application' . DS);

require_once APP_PATH . 'Config.php';
require_once APP_PATH . 'Request.php';
require_once APP_PATH . 'Bootstrap.php';
require_once APP_PATH . 'Controller.php';
require_once APP_PATH . 'Model.php';
require_once APP_PATH . 'View.php';
require_once APP_PATH . 'Database.php';

try{
    Bootstrap::run(new Request);
}catch(Exception $e){
    echo $e->getMessage();;
}

?>
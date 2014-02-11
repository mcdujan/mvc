<?php

/*
    Constantes para definir la estructura de archivos
 */
defined('DS')       ? null : define('DS', DIRECTORY_SEPARATOR);
defined('ROOT')     ? null : define('ROOT', realpath(dirname(__FILE__)) . DS);
defined('APP_PATH') ? null : define('APP_PATH', ROOT . 'aplicacion' . DS);

require_once APP_PATH . 'Configs.php';
require_once APP_PATH . 'Peticion.php';
require_once APP_PATH . 'Lanzador.php';
require_once APP_PATH . 'Controlador.php';
require_once APP_PATH . 'Modelo.php';
require_once APP_PATH . 'Vista.php';
require_once APP_PATH . 'Registro.php';
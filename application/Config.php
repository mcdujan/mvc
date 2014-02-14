<?php 

/**
 * CONSTANTES DE LA BASE DE DATOS
 */
defined('DB_HOST')              ? null : define('DB_HOST', 'localhost');
defined('DB_USER')              ? null : define('DB_USER', 'root');
defined('DB_PASS')              ? null : define('DB_PASS', 'e4e5e6e7');
//defined('DB_PASS')              ? null : define('DB_PASS', 'e4e5e6e7');
defined('DB_NAME')              ? null : define('DB_NAME', 'mvc');
defined('DB_CHAR')              ? null : define('DB_CHAR', 'utf8');

/**
 * CONSTANTES DEL PROYECTO
 */  
// defined ('BASE_URL')            ? null : define('BASE_URL', 'http://localhost:8088/ejercicios/GitHub/mvc/');

//Como tenemos definido el localhost diferente lo dejo oculto
defined ('BASE_URL')            ? null : define('BASE_URL', 'http://localhost/framework/');

// Definición de elementos por defecto
defined ('DEFAULT_CONTROLLER')  ? null : define('DEFAULT_CONTROLLER', 'index');
defined ('DEFAULT_LAYOUT')      ? null : define('DEFAULT_LAYOUT', 'default');

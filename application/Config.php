<?php 

// Definimos la url base de nuestro proyecto para incluir archivos
// Hay que modificar este valor dependiendo de la carpeta que contenga nuestro proyecto   
defined ('BASE_URL')            ? null : define('BASE_URL', 'http://localhost:8088/ejercicios/GitHub/');
//Como tenemos definido el localhost diferente lo dejo oculto
//defined ('BASE_URL')            ? null : define('BASE_URL', 'http://localhost/framework/');


// Definición de elementos por defecto
defined ('DEFAULT_CONTROLLER')  ? null : define('DEFAULT_CONTROLLER', 'index');
defined ('DEFAULT_LAYOUT')      ? null : define('DEFAULT_LAYOUT', 'default');

defined('DB_HOST')              ? null : define('DB_HOST', 'localhost');
defined('DB_USER')              ? null : define('DB_USER', 'root');
defined('DB_PASS')              ? null : define('DB_PASS', '');
defined('DB_NAME')              ? null : define('DB_NAME', 'socio');
defined('DB_CHAR')              ? null : define('DB_CHAR', 'utf8');

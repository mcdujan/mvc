<?php 

// Definimos la url base de nuestro proyecto para incluir archivos
// Hay que modificar este valor dependiendo de la carpeta que contenga nuestro proyecto   
defined ('BASE_URL')            ? null : define('BASE_URL', 'http://localhost/framework/');

// Definición de elementos por defecto
defined ('DEFAULT_CONTROLLER')  ? null : define('DEFAULT_CONTROLLER', 'index');
defined ('DEFAULT_LAYOUT')      ? null : define('DEFAULT_LAYOUT', 'default');

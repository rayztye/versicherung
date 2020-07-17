<?php 

require 'includes.php';

$req = explode("/",isset($_REQUEST['r'])?$_REQUEST['r']:'dashboard');
$controller = strtolower(array_shift($req));
$method = array_shift($req);
if( !$method ) $method = 'init';

require_once __DIR__.'/controller/'.$controller.'.php';

$worker = new $controller();
$worker->$method();


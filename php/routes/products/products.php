<?php
header("Content-Type:application/json");
require_once("../../controllers/product.controller.php");
get_products();
?>
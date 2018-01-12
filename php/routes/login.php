<?php
require("../controllers/user_controller.php");
if(login()) echo "true";
else echo "false";
?>
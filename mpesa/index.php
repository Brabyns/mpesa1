<?php
//if(!empty($phone_number) && !empty($amount)){
if(isset($_POST['submit'])){


    $phone_number = $_POST['phone_number'];
    $amount = $_POST['amount'];
// echo   $phone_number = str_replace("254", "0", $phone_number);

    }
//    }else{
//    echo "error";
//    $phone_number = null;
//    $amount = null;
//
//    }

  
?>






<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>Form </title>
   </head>
   <style >
      body{
      background-color: skyblue;
      }
   </style>
   <body>
      <center>
         <form style="padding-top: 150px;" action="stk_push.php" method="POST">
            <fieldset style="width: 400px; height: 300px; background-color: white;">
               <label style="padding-top: 200px;color:red;">Lipa Online</label>
               <br>
               <input class="input2" type="number" name="amount" placeholder="Enter Amount" style="margin-top: 60px;">
               <br><br>
               <input type="number" type="number" name="phone_number" placeholder="enter Phone number">
               <br><br>
               <button type="submit" name="submit" class="btn btn-primary" style="color: white; background-color: blue;">
               Make Payment Now
               </button>
            </fieldset>
         </form>
      </center>
<!--      </div>-->
      
      
      
      
      
      
      
   </body>
</html>



 






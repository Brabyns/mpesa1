
<?php include "db.php";  



header("Content-Type: application/json");

    $response = '{
        "ResultCode": 0, 
        "ResultDesc": "Confirmation Received Successfully"
    }';

    // DATA
    $mpesaResponse = file_get_contents('php://input');

    // log the response
    $logFile = "M_PESAConfirmationResponse.json";

    // write to file
    $log = fopen($logFile, "a");

    fwrite($log, $mpesaResponse);
    fclose($log);

    echo $response;


//
//
//
//$stkCallbackResponse = file_get_contents('php://input');
//$logFile = "stkTinypesaResponse.json";
//fwrite($log, $stkCallbackResponse);
//fclose($log);
//
//
//$callbackContent = json_decode($stkCallbackResponse);
//
//$MerchantRequestID         = $callbackContent->Body->stkCallback->MerchantRequestID;
//$ResultCode                = $callbackContent->Body->stkCallback->ResultCode;
//$CheckoutRequestID         = $callbackContent->Body->stkCallback->CheckoutRequestID;
//$Amount                    = $callbackContent->Body->stkCallback->CallbackMetadata->Item[0]->Value;
//$MpesaReceiptNumber        = $callbackContent->Body->stkCallback->CallbackMetadata->Item[1]->Value;
//$Balance                   = $callbackContent->Body->stkCallback->CallbackMetadata->Item[2]->Value;
//$Date0                   = $callbackContent->Body->stkCallback->CallbackMetadata->Item[3]->Value;
//$PhoneNumber               = $callbackContent->Body->stkCallback->CallbackMetadata->Item[4]->Value;
//$ResultDesc                = $callbackContent->Body->stkCallback->ResultDesc;
//if ($ResultCode == 0) {
//
//
//    
//     $query = "INSERT INTO tinypesa (CheckoutRequestID, ResultCode, amount, MpesaReceiptNumber, PhoneNumber)  VALUES('{$CheckoutRequestID}', '{$ResultCode}',  {$Amount}, {$TransactionId}, {$UserPhoneNumber})";
//$query_send = mysqli_query($connection, $query);
//
//
//
//}
?>


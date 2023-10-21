<?php
$conn = mysqli_connect("localhost", "root", "", "hostel");
$rows = mysqli_query($conn, "SELECT * FROM mpesa");
?>
<table  border = 1 cellpadding = 0 >
  <tr>
     <th>MerchantRequestID</th>
    <th>ResultDesc</th>
    <th>Amount</th>
    <th>MpesaReceiptNumber</th>
    <th>Balance</th>
    <th>PhoneNumber</th>
    <th>Date</th>
  </tr>
  <?php $i = 1; ?>
  <?php foreach($rows as $row) : ?>
    <tr>
      
      <td><?php echo $row["MerchantRequestID"]; ?></td>
      <td><?php echo $row["ResultDesc"]; ?></td>
      <td><?php echo $row["amount"]; ?></td>
      <td><?php echo $row["MpesaReceiptNumber"]; ?></td>
      <td><?php echo $row["Balance"]; ?></td>
      <td><?php echo $row["PhoneNumber"]; ?></td>
      <td><?php echo $row["Date"]; ?></td>
    </tr>
  <?php endforeach; ?>
</table>

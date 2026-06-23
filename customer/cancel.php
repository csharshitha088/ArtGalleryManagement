<?php include("header/header.php");
$id1 = $_GET['varname'];
if ( isset($id1))
{
   	$a=$id1;
   	$up="delete from booking_info where bart_id=$a";// this is query for cancelling of booking
    $b = "select cust_id from booking_info where bart_id=$a";
    $c = mysqli_query($con, $b);
    $d = mysqli_fetch_array($c);
    
   	$run=mysqli_query($con, $up);
   if ($run) {
      $upto = "delete from payment_info where bart_id=$a";
      $res = mysqli_query($con, $upto);
      if ($res) {
         echo "<script>alert('Booking Successfully Canceled..!');
   		window.location.replace('cancel_booking.php?id2=$d[0]');
   		</script>";
      }
   }
   	else{
   		 echo "<script>alert('Error');
   		
   		</script>";}
   }
   mysqli_close($con);
   ?>
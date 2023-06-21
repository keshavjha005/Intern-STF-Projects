<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/customer.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script defer src="script.js"></script>
    <title>Customers</title>
</head>
<body>
    <div class="header-main">
        <nav>
            <label class="logo">BBS-<span>TSF</span></label>
            <ul>
                <li><a  href="index.php">HOME</a></li>
                <li><a  href="customers.php">CUSTOMERS</a></li>
                <li><a  href="transfer-money.php">TRANSFER MONEY</a></li>
                <li><a  href="transaction.php">TRANSACTION</a></li>
            </ul>
        </nav>
    </div>

    <?php
    include 'config.php';
    $sql = "SELECT * FROM customer";
    $result = mysqli_query($conn,$sql);
?>



<div class="container">
        <h2 class="text-center pt-4" style="color : black;">CUSTOMERS</h2>
        <br>
            <div class="row">
                <div class="col">
                    <div class="table-responsive-sm">
                    <table class="table table-hover table-sm table-striped table-condensed table-bordered" style="border-color:black;">
                        <thead style="color : black;">
                            <tr>
                            <th scope="col" class="text-center py-2">Id</th>
                            <th scope="col" class="text-center py-2">Name</th>
                            <th scope="col" class="text-center py-2">E-Mail</th>
                            <th scope="col" class="text-center py-2">Balance</th>
                            <th scope="col" class="text-center py-2">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                <?php 
                    while($rows=mysqli_fetch_assoc($result)){
                ?>
                    <tr style="color : black;">
                        <td class="py-2"><?php echo $rows['id'] ?></td>
                        <td class="py-2"><?php echo $rows['name']?></td>
                        <td class="py-2"><?php echo $rows['email']?></td>
                        <td class="py-2">PHP <?php echo $rows['balance']?></td>
                        <td><a class="mr-20" href="view-one.php?id= <?php echo $rows['id'] ;?>"> <button type="button" class="bttn">View</button></a>
                        <a href="transfer.php?id= <?php echo $rows['id'] ;?>"> <button type="button" class="bttn1">Transfer</button></a> 
                    </td>
                        
                    </tr>
                <?php
                    }
                ?>
            
                        </tbody>
                    </table>
                    </div>
                </div>
            </div> 
         </div>
         
         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script> 
</body>
</html>
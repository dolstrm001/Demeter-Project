<?php session_start();
if(!$_SESSION["username"]){
    header("location:login.php");
}
include('../baseComponents/DataBase.php');
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="../resources/Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <style type="text/css">
            body {
                min-height: 2000px;
                padding-top: 70px;
              }            
        </style>
        <script type="text/javascript" src="../resources/JQuery/jquery.min.js"></script>
        <script type="text/javascript" src="../resources/Bootstrap/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">CMS</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Formulieren</a></li>
                        <li><a href="inschrijvingen.php">Inschrijvingen</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="logout.php">Uitloggen</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <h2>Ingevulde formulieren</h2>
            </div>
            <div class="row">
                <table class="table-hover table-condensed table">
                    <thead>
                        <tr>
                            <th>Naam</th>
                            <th>Email</th>
                            <th>Datum</th>
                            <th> </th>
                        </tr>
                    </thead>
                    <tbody>

                  <?php 
                    $db = new DataBase();
                    $result = $db->returnForms();
                    while ($row = mysqli_fetch_array($result)){
                        echo "<tr>";
                        echo "<td>".$row['name']."</td>";
                        echo "<td><a href='mailto:".$row['email']."?subject=".$row['subject']."&BODY=".htmlentities(rawurlencode("\n\nBericht: \n" . $row['message']))."'>".$row['email']."</a></td>";
                        echo "<td>".$row['date']."</td>";
                        echo "<td><button type='button' class='btn btn-info' data-toggle='collapse' data-target='#" . $row['id'] . "'>"
                            . "<span class='glyphicon glyphicon-align-justify'></span>"
                            . "</button></td>";
                        echo "</tr>";
                        echo "<tr>
                              <td style='padding:0;border:0;' colspan='4'>"
                            . "<div id='" . $row['id'] . "' class='collapse' style='padding:5px;'>"
                            . "<h4>". $row['subject'] . "</h4>"
                            . "<p>".str_replace("\n", "<br>", htmlspecialchars($row['message']))."</p>";
                        echo "</tr>";
                    }
                ?>
                </tbody>
                </table>
  
            </div>
            
        </div>
    </body>
</html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "krishibhavan";
String userid = "root";
String password = "";
try{
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{    
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from staff_notice where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <style>
body{
background-image:url(images/rose.jpg);
background-size:cover;
}













</style>
<a href="adminpanel.html"><img src="img/bg-img/back.jpg" width="50" height="50" style="left-margin:10px"></a>
    
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Notice</title>

    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Main CSS-->
    <link href="css/style_noti.css" rel="stylesheet" media="all">
</head>

 <style>
body{
background-image:url('img/bg-img/70.jpg');
background-size:cover;
}
</style>
   <form action="update_noticestaff_qry.jsp" method="POST"  >
        <br><br><br><br><br><br><br><br>
        <div class="wrapper wrapper--w900">
            <div class="card card-6">
                <div class="card-heading">
                    <h2 class="title">Notice</h2>
                </div>
                <div class="card-body">
                   
                       <input type="hidden" class="input-field" placeholder="id" name="id" value="<%=resultSet.getString("id") %>"  required>
                        <div class="form-row">
                            <div class="name">Message</div>
                            <div class="value">
                                <div class="input-group">
                                    <font color="black">    <input type="text" class="input-field" placeholder="id" name="message" value="<%=resultSet.getString("message") %>"  required>  </font>  </div>
                            </div>
                        </div>
                       
                <div class="card-footer">
                    <button class="btn btn--radius-2 btn--blue-2" type="submit">Send </button>
                   
                   
                </div>
            </div>
        </div>
    </div>
</div>
    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>


    <!-- Main JS-->
    <script src="js/global.js"></script>

<!-- This templates was made by Colorlib (https://colorlib.com) -->
</form>
<!-- end document-->
<%    
}
connection.close();
}catch (Exception e) {
e.printStackTrace();
}
%>
        </body>
</html>

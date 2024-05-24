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
String sql ="select * from apply_leave where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>



<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>krishibhavan</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/css/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/leave.css" rel="stylesheet" media="all">
</head>

<body>
      <a href="view_leave.jsp"><img src="img/bg-img/back.jpg" width="50" height="50" style="left-margin:10px"></a>	
	
    <div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Staff Leave</h2>
                    <form method="POST" action="appr_qry.jsp">
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Name" name="name" value="<%=resultSet.getString("name") %>" required>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3 js-datepicker" type="date" placeholder="From date" name="from_date" value="<%=resultSet.getString("from_date") %>" required>
                            <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3 js-datepicker" type="date" placeholder="To date" name="to_date" value="<%=resultSet.getString("to_date") %>" required>
                            <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                        </div>
                            
                            <div class="input-group">
                            <input class="input--style-3 js-datepicker" type="" placeholder="Reason" name="description" value="<%=resultSet.getString("description") %>" required>
                            <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                        </div>
                            
                       <input class="input--style-3" type="hidden" placeholder="id" name="id" value="<%=resultSet.getString("id") %>" required>
                        <div class="input-group">
                            <label>approve</label>
                            <select name="status">
                                <option value="Approved">Approve</option>
                                <option value="Rejected">Reject</option>
                                    
                            </select>
                        </div>
                        
                        <div class="p-t-10">
                            <button class="btn btn--pill btn--green" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
   <%    
}
connection.close();
}catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>

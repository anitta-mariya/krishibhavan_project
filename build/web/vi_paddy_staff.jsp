
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
String sql ="select * from paddy_reg where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
  <head>
    <title>Apply Loan</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, select, textarea, label { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      h1 {
      position: absolute;
      margin: 0;
      font-size: 50px;
      color: #fff;
      z-index: 2;
      line-height: 83px;
      }
      legend {
      padding: 10px;      
      font-family: Roboto, Arial, sans-serif;
      font-size: 18px;
      color: #fff;
      background-color: #006622;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 8px #006622; 
      }
      .banner {
      position: relative;
      height: 250px;
      background-color: rgba(0, 0, 0, 0.4);
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 255, 0, 0.5); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      input[type="date"] {
      padding: 4px 5px;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color:  #006622;
      }
      .item input:hover, .item select:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 3px 0  #006622;
      color: #006622;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      .item span {
      color: red;
      }
      input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: absolute;
      font-size: 20px;
      color: #00b33c;
      }
      .item i {
      right: 1%;
      top: 30px;
      z-index: 1;
      }
      .week {
      display:flex;
      justify-content:space-between;
      }
      .columns {
      display:flex;
      justify-content:space-between;
      flex-direction:row;
      flex-wrap:wrap;
      }
      .columns div {
      width:48%;
      }
      [type="date"]::-webkit-calendar-picker-indicator {
      right: 1%;
      z-index: 2;
      opacity: 0;
      cursor: pointer;
      }
      input[type=radio], input[type=checkbox]  {
      display: none;
      }
      label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 15px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      .question-answer label {
      display: block;
      }
      label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      input[type=radio]:checked + label:before, label.radio:hover:before {
      border: 2px solid  #006622;
      }
      label.radio:after {
      content: "";
      position: absolute;
      top: 6px;
      left: 5px;
      width: 8px;
      height: 4px;
      border: 3px solid  #006622;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .flax {
      display:flex;
      justify-content:space-around;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background:  #006622;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background:  #00b33c;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .name-item div {
      width: calc(50% - 20px);
      }
      .name-item div input {
      width:97%;}
      .name-item div label {
      display:block;
      padding-bottom:5px;
      }
      }
    </style>
  </head>
  <body>
    <div class="testbox">
    <form>
      <div class="banner">
	  
        <h1>Apply Loan</h1>
      </div>
      <br/>
      <fieldset>
        <legend>Details</legend>
        <div class="columns">
          <div class="item">
               <input id="fname" type="hidden" name="id" value="<%=resultSet.getString("id") %>"required />
         
            <label for="fname"> Name<span>*</span></label>
            <input id="fname" type="text" name="name" value="<%=resultSet.getString("name") %>"required />
          </div>
          <div class="item">
            <label for="lname"> Address<span>*</span></label>
            <input id="lname" type="text" name="address" value="<%=resultSet.getString("address") %>"required />
          </div>
            <div class="item">
		   <label for="birthday">Date of Birth<span>*</span></label>
		   <input type="text" id="dob" name="dob" value="<%=resultSet.getString("dob") %>"required />
  
		  </div>
             <div class="item">
            <label for="city">Gender<span>*</span></label>
            <input id="city" type="text"   name="gender" value="<%=resultSet.getString("gender") %>"required />
          </div>
             <div class="item">
            <label for="address">Phone number<span>*</span></label>
            <input id="address" type="text"   name="phonenum" value="<%=resultSet.getString("phonenum") %>"required />
          </div>
            <div class="item">
            <label for="zip">Email id<span>*</span></label>
            <input id="zip" type="text"   name="email" value="<%=resultSet.getString("email") %>"required/>
          </div>
         
          
         
		  
          <div class="item">
            <label for="state">Thaluk<span>*</span></label>
            <input id="state" type="text"   name="thaluk" value="<%=resultSet.getString("thaluk") %>"required/>
          </div>
          <div class="item">
            <label for="eaddress">Block<span>*</span></label>
            <input id="eaddress" type="text"   name="block" value="<%=resultSet.getString("block") %>"required/>
          </div>
          <div class="item">
            <label for="phone">panchayath<span>*</span></label>
            <input id="phone" type="tel"   name="panchayath" value="<%=resultSet.getString("panchayath") %>"required/>
          </div>
            <div class="item">
            <label for="eaddress">village<span>*</span></label>
            <input id="address" type="text"   name="village" value="<%=resultSet.getString("village") %>"required/>
          </div>
		  <div class="item">
            <label for="phone">Area of field<span>*</span></label>
            <input id="phone" type="tel"   name="area" value="<%=resultSet.getString("area") %>"required/>
          </div>
     
    
     
	  </fieldset>
	  <fieldset>
       
        <div class="columns">
          <div class="item">
            <label for="fname">Ration card No:<span>*</span></label>
			<input id="name" type="text"   name="name" value="<%=resultSet.getString("rationnum") %>"required/>
            </div><br><br>
			
          <div class="item">
		     <label for="fname">Rationcard copy:<span>*</span></label>
			<input type="file" value="<%=resultSet.getString("rationcopy") %>"required><br><br>
            </div>
         
          <div class="item">
            <label for="city">Aadhar card<span>*</span></label>
            <input id="city" type="text"   name="city" value="<%=resultSet.getString("aadharnum") %>"required/>
          </div>
          <div class="item">
            <label for="state">Aadhar Card copy<span>*</span></label>
            <input type="file"name="aad" value="<%=resultSet.getString("aadharcopy") %>"required>
          </div>
          
      </select>
      </div>    
      </div>
 
      </fieldset>
      <div class="btn-block">
      <button type="submit" href="/">Submit</button>
      </div>
    </form>
    </div>
           <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
  </body>
</html>
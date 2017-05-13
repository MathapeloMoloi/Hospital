

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="hospitalServices.ReceptionistService"%>
<%@page import="hospitalModel.Nurse"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Hospital Management System</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--5grid--><script src="css/5grid/viewport.js"></script><!--[if lt IE 9]><script src="css/5grid/ie.js"></script><![endif]--><link rel="stylesheet" href="css/5grid/core.css" />
		<link rel="stylesheet" href="css/style.css" />
                <link rel="stylesheet" href="css/tableStyle.css"/>
		<!--[if IE 9]><link rel="stylesheet" href="css/style-ie9.css" /><![endif]-->
	</head>
	<body>
	<!-- ********************************************************* -->
		<div id="header-wrapper">
			<div class="5grid">
				<div class="12u-first">
					
					<header id="header">
						<h1><a href="home.jsp">Hospital</a></h1>
						<nav>
							<a href="home.jsp">Home</a>
							<a href="doctors.jsp">Doctors</a>
							<a href="nurses.jsp" class="current-page-item"> Nurses</a>
							<a href="patients.jsp">Patients</a>
							<a href="patientappointment.jsp">Patient appointment</a>
                                                        <a href="addpatient.jsp">Manage Patient</a>
						</nav>
					</header>
				
				</div>
			</div>
		</div>
                
		<div id="main">
			<div class="5grid">
				<div class="main-row">
                                    <h1>Nurses</h1>
					<div class="6u">
					
						
                                                        
 <table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
        <th><span>First Name</span></th>
        <th><span>Last Name</span></th>
        <th><span>Street Name</span></th>
        <th><span>House Number</span></th>
        <th><span>City</span></th>
        <th><span>Cell No</span></th>
        <th><span>Date Of Birth</span></th>
        <th><span>Sex</span></th>
      </tr>
    </thead>
    <tbody>
      <%
                                                                    ReceptionistService recep = new ReceptionistService();
                                                                    List<Nurse> list = new ArrayList();
                                                                    list = recep.getNurses();
                                                                    for(Nurse n : list){
                                                                 %>
                                                                    <tr>
                                                                        
                                                                        
                                                                         <td><%=n.getFirstName()%></td>
                                                                         <td><%=n.getLastName()%></td>
                                                                         <td><%=n.getStreetName()%></td>
                                                                         <td><%=n.getHouseNo()%></td>
                                                                         <td><%=n.getCity()%></td>
                                                                         <td><%=n.getCellphone()%></td>
                                                                         <td><%=n.getDateOfBirth()%></td>
                                                                         <td><%=n.getSex()%></td>
                                                                     <tr>
                                                                        
                                                                 <%}%>
    </tbody>
  </table>
                                                        
						

					</div>
				</div>
			</div>
		</div>
		<div id="footer-wrapper">
			<div class="5grid">
				
				
				<div class="12u-first">

					<div id="copyright">
						&copy; 2012 An Untitled Website. Design by <a href="http://nodethirtythree.com/">nodethirtythree</a> + <a href="http://www.freecsstemplates.org/">FCT</a>. Photos by <a href="http://fotogrph.com/">Fotogrph</a>.
					</div>

				</div>
			</div>
		</div>
	<!-- ********************************************************* -->
	</body>
</html>


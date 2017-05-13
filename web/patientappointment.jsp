

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="hospitalServices.ReceptionistService"%>
<%@page import="hospitalModel.Patientappointment"%>
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
							<a href="nurses.jsp"> Nurses</a>
							<a href="patients.jsp" >Patients</a>
							<a href="patientappointment.jsp" class="current-page-item">Patient appointment</a>
                                                        <a href="addpatient.jsp">Manage Patient</a>
						</nav>
					</header>
				
				</div>
			</div>
		</div>
                
		<div id="main">
			<div class="5grid">
				<div class="main-row">
                                    <h1>Patient Appointment</h1>
					<div class="6u">
					
						
                                                        
 <table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
        <th><span>Appointment Date</span></th>
        <th><span>Appointment Time</span></th>
      </tr>
    </thead>
    <tbody>
      <%
                                                                    ReceptionistService recep = new ReceptionistService();
                                                                    List<Patientappointment> list = new ArrayList();
                                                                    list = recep.getAppoinments();
                                                                    for(Patientappointment n : list){
                                                                 %>
                                                                    <tr>
                                                                        
                                                                        
                                                                         <td><%=n.getAppDate()%></td>
                                                                         <td><%=n.getAppTime()%></td>
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

